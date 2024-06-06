package com.bkap.controllers.home;

import com.bkap.entities.*;
import com.bkap.repository.CartRepository;
import com.bkap.repository.UserRepository;
import com.bkap.repository.WishlistRepository;
import com.bkap.services.*;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.eclipse.jdt.internal.compiler.util.Sorting;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequiredArgsConstructor
@RequestMapping("")
public class HomeController {
    private final CategoryService categoryService;
    private final ProductService productService;
    private final BrandService brandService;
    private final UserService userService;
    private final WishlistRepository wishlistRepository;
    private final WishlistService wishlistService;
    private final UserRepository userRepository;
    private final CartRepository cartRepository;
    private final CartService cartService;
    private final Cart_itemService cart_itemService;

    @GetMapping({"/","trang-chu"})
    public String index(Model model){
        model.addAttribute("categories" , categoryService.findByStatusIsTrue());
        model.addAttribute("products", productService.findbyStatus());
        model.addAttribute("brands", brandService.findByStatusIsTrue());
        model.addAttribute("page" , "index");
        return "home";
    }

    @GetMapping("shop")
    public String shop(Model model ,
                       @RequestParam(defaultValue = "0") int page,
                       @RequestParam(defaultValue = "12") int size,
                       @RequestParam(defaultValue = "default",required = false) String sort){
        Sort sorting = Sort.unsorted();
        switch (sort){
            case "name_asc":
                sorting = Sort.by("productName").ascending();
                break;
            case "name_desc":
                sorting = Sort.by("productName").descending();
                break;
            case "price_asc":
                sorting = Sort.by("price").ascending();;
                break;
            case "price_desc":
                sorting = Sort.by("price").descending();;
                break;
        }
        Page<Product> productPage = productService.findAll(page, size, sorting);
        model.addAttribute("categories" , categoryService.getAll());
        model.addAttribute("products", productPage);
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("currentPage" , page);
        model.addAttribute("pageSize" , size);
        model.addAttribute("sort" , sort);
        model.addAttribute("page" , "shop");
        return "home";
    }

    @GetMapping("shop-categories/{id}")
    public String shopcategories(Model model , @PathVariable int id){
        model.addAttribute("categories" , categoryService.getAll());
        model.addAttribute("proCate", productService.findProductsByCategoryId(id));
        model.addAttribute("products", productService.findbyStatus());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("page" , "shop-categories");
        return "home";
    }

    @GetMapping("shop-brands/{id}")
    public String shopbrands(Model model , @PathVariable int id){
        model.addAttribute("categories" , categoryService.getAll());
        model.addAttribute("proBrand", productService.findProductsByBrandId(id));
        model.addAttribute("products", productService.findbyStatus());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("page" , "shop-brands");
        return "home";
    }

    @GetMapping("dang-nhap")
    public String loginUser(Model model){
        model.addAttribute("page","login");
        model.addAttribute("cart" , new Cart());
        return "home";
    }

    @GetMapping("blog")
    public String blog(Model model){
        model.addAttribute("page","blog");
        return "home";
    }

    @GetMapping("contact-us")
    public String contactus(Model model){
        model.addAttribute("page","contactus");
        return "home";
    }

    @PostMapping("dang-nhap")
    public String loginSave(String username, String password, HttpServletRequest req, Model model) {
        User user = userService.getUser(username);
        String passMD5 = Cipher.GenerateMD5(password);
        if ( user == null|| !user.getPassword().equals(passMD5)) {
            model.addAttribute("msg" , "Thông tin đăng nhập sai");
            return "login";
        }
        var data = userService.getUser(username).getId();
        Cart cart = cartService.findByUserId(data);
        if(cart == null){
            cart = new Cart();
            cart.setUser(user);
            cartService.save(cart);
        }

        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("id",user.getId());
        session.setAttribute("picture",user.getImage());
        session.setAttribute("fullName", user.getLastName() + "" + user.getFirstName());
        session.setAttribute("role" , user.isRole());
        session.setAttribute("countwishlist" , wishlistService.findWishlistsByUserId(data).size());
        session.setAttribute("cart" , cart );
        return "redirect:/";

    }

    @GetMapping("logout")
    public String logout(Model model , HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("chi-tiet/{id}")
    public String productDetail(Model model , @PathVariable("id") String id){
        model.addAttribute("product" , productService.getById(id));
        model.addAttribute("wishlist" , new Wishlist());
        model.addAttribute("cart_item" , new Cart_item());
        model.addAttribute("page", "detail");
        return "home";
    }

    @GetMapping("register")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("page", "register");
        return "home";
    }

    @PostMapping("save")
    public String save(Model model, @ModelAttribute User user , HttpServletRequest req) {
        model.addAttribute("user", user);
        model.addAttribute("page" , "register");
        String password = Cipher.GenerateMD5(user.getPassword());
        user.setPassword(password);
        user.setRole(false);
        user.setStatus(false);
        userService.save(user);
        return "redirect:/dang-nhap";
    }

    @GetMapping("my-account/{id}")
    public String editUser(@PathVariable int id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("resetpassword" , userService.getById(id));
        model.addAttribute("page", "myaccount");
        return "home";
    }

    @PostMapping("update")
    public String update(Model model, @ModelAttribute User user , @RequestParam("file") MultipartFile file ,HttpServletRequest req) {
        if(file != null && !file.isEmpty()) {
            // nếu tải tệp mới
            String UploadRootPath = req.getServletContext().getRealPath("images");
            String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();

            try {
                //Lưu ảnh tệp mới
                File destination = new File(imageUploadPath);
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                user.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error",e.getMessage());
                System.out.println(e.getMessage());
                model.addAttribute("user", user);
                model.addAttribute("page", "myaccount");
                return "home";
            }

        }else {
            var userOld = userService.getById(user.getId());
            user.setImage(userOld.getImage());
        }
        var dateOld = userService.getById(user.getId());
        user.setCreated_at(dateOld.getCreated_at());
        user.setRole(user.isRole());
        user.setPassword(user.getPassword());
        user.setStatus(false);
        userService.update(user);

        return "redirect:/";
    }

    @PostMapping("resetpassword")
    public String resetpassword(@ModelAttribute User resetpassword , HttpServletRequest req , Model model ) {
        
        return "";
    }

    @GetMapping("wishlist/{id}")
    public String wishlist(Model model,@PathVariable int id){
        model.addAttribute("products", productService.getAll());
        model.addAttribute("wishlist" , wishlistService.findWishlistsByUserId(id));
        model.addAttribute("page" , "wishlist");
        return "home";
    }

    @PostMapping("addwishlist")
    public String addwishlist(Model model, @ModelAttribute Wishlist wishlist , HttpServletRequest req){
        model.addAttribute("wishlist", wishlist);
        wishlistRepository.save(wishlist);
        return "redirect:/";
    }

    @GetMapping("delete-wishlist/{id}")
    public String deleteWishlist(Model model , @PathVariable int id){
        wishlistService.delete(wishlistService.getById(id));
        return "redirect:/";
    }

    @GetMapping("addtocart/{proId}")
    public String addtocart(Model model, @PathVariable String proId, @ModelAttribute Cart_item cart_item , HttpServletRequest req) {
        cart_item.setProductId(proId);
        cart_itemService.save(cart_item);
        return "redirect:/";
    }

    @GetMapping("cart/{id}")
    public String cart(Model model , @PathVariable int id) {
        model.addAttribute("cart_item" , cart_itemService.findByCart(cartService.findByUserId(id)));
        model.addAttribute("page" , "index");
        return "home";
    }

}
