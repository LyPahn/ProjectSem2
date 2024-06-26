package com.bkap.controllers.home;

import com.bkap.entities.*;
import com.bkap.repository.CartRepository;
import com.bkap.repository.UserRepository;
import com.bkap.repository.WishlistRepository;
import com.bkap.services.*;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import jakarta.websocket.Session;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.List;

@Controller
@RequiredArgsConstructor
@SessionAttributes("id")
@RequestMapping("")
public class HomeController {
    private final CategoryService categoryService;
    private final ProductService productService;
    private final BrandService brandService;
    private final UserService userService;
    private final WishlistService wishlistService;
    private final CartService cartService;
    private final CartItemService cartItemService;
    private final OrderService orderService;
    private final OrderItemService orderItemService;

    @GetMapping({"/", "trang-chu"})
    public String index(Model model) {
        model.addAttribute("categories", categoryService.findByStatusIsTrue());
        model.addAttribute("products", productService.findbyStatus());
        model.addAttribute("brands", brandService.findByStatusIsTrue());
        model.addAttribute("page", "index");
        return "home";
    }

    @GetMapping("shop")
    public String shop(Model model, @RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "12") int size, @RequestParam(defaultValue = "default", required = false) String sort) {
        Sort sorting = Sort.unsorted();
        switch (sort) {
            case "name_asc":
                sorting = Sort.by("productName").ascending();
                break;
            case "name_desc":
                sorting = Sort.by("productName").descending();
                break;
            case "price_asc":
                sorting = Sort.by("price").ascending();
                ;
                break;
            case "price_desc":
                sorting = Sort.by("price").descending();
                ;
                break;
        }
        Page<Product> productPage = productService.findAll(page, size, sorting);
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("products", productPage);
        model.addAttribute("currentPage", page);
        model.addAttribute("pageSize", size);
        model.addAttribute("sort", sort);
        model.addAttribute("page", "shop/shop");
        return "home";
    }

    @GetMapping("search-name")
    public String search(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "12") int size, @RequestParam(defaultValue = "") String keyword, Model model) {

        //Paginate
        Pageable pageable = PageRequest.of(page, size);

        //search and paginate
        Page<Product> productPage = productService.search(keyword, pageable);

        model.addAttribute("products", productPage);
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("totalPages", productPage.getTotalPages());
        model.addAttribute("totalItems", productPage.getTotalElements());
        model.addAttribute("keyword", keyword);
        model.addAttribute("page", "shop/search-name");
        return "home";
    }

    @GetMapping("searchPrice")
    public String searchPrice(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "12") int size, @RequestParam(defaultValue = "") double min, @RequestParam(defaultValue = "") double max, Model model) {

        //Phân trang
        Pageable pageable = PageRequest.of(page, size);

        //search and paginate
        Page<Product> productPage = productService.search(min, max, pageable);

        model.addAttribute("products", productPage);
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("min", min);
        model.addAttribute("max", max);
        model.addAttribute("totalPages", productPage.getTotalPages());
        model.addAttribute("totalItems", productPage.getTotalElements());
        model.addAttribute("page", "shop/search-price");
        return "home";
    }

    @GetMapping("shop-categories/{id}")
    public String shopcategories(Model model, @PathVariable int id, @RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "12") int size, @RequestParam(defaultValue = "default", required = false) String sort) {
        Sort sorting = Sort.unsorted();
        switch (sort) {
            case "name_asc":
                sorting = Sort.by("productName").ascending();
                break;
            case "name_desc":
                sorting = Sort.by("productName").descending();
                break;
            case "price_asc":
                sorting = Sort.by("price").ascending();
                ;
                break;
            case "price_desc":
                sorting = Sort.by("price").descending();
                ;
                break;
        }
        Page<Product> productPage = productService.findAll(page, size, sorting);
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("proCate", productService.findProductsByCategoryId(id));
        model.addAttribute("products", productPage);
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("page", "shop/shop-categories");
        return "home";
    }

    @GetMapping("shop-brands/{id}")
    public String shopbrands(Model model, @PathVariable int id) {
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("proBrand", productService.findProductsByBrandId(id));
        model.addAttribute("products", productService.findbyStatus());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("page", "shop/shop-brands");
        return "home";
    }

    @GetMapping("dang-nhap")
    public String loginUser(Model model, HttpServletRequest req, SessionStatus status) {
        model.addAttribute("page", "login");
        model.addAttribute("cart", new Cart());
        return "home";
    }

    @GetMapping("blog")
    public String blog(Model model) {
        model.addAttribute("page", "blog");
        return "home";
    }

    @GetMapping("contact-us")
    public String contactus(Model model) {
        model.addAttribute("page", "contactus");
        return "home";
    }

    @PostMapping("dang-nhap")
    public String loginSave(String username, String password, HttpServletRequest req, Model model, SessionStatus status) {
        User user = userService.getUser(username);
        String passMD5 = Cipher.GenerateMD5(password);
        if (user == null || !user.getPassword().equals(passMD5)) {
            model.addAttribute("msg", "Thông tin đăng nhập sai");
            model.addAttribute("page", "login");
            return "home";
        }
        var data = userService.getUser(username).getId();
        Cart cart = cartService.findByUserId(data);
        if (cart == null) {
            cart = new Cart();
            cart.setUser(user);
            cartService.save(cart);
        }
        HttpSession session = req.getSession();

        session.setMaxInactiveInterval(3600);
        session.setAttribute("id", user.getId());
        session.setAttribute("picture", user.getImage());
        session.setAttribute("fullName", user.getLastName() + "" + user.getFirstName());
        session.setAttribute("firstname", user.getFirstName());
        session.setAttribute("lastname", user.getLastName());
        session.setAttribute("email", user.getEmail());
        session.setAttribute("address", user.getAddress());
        session.setAttribute("phone", user.getPhone());
        session.setAttribute("role", user.isRole());
        session.setAttribute("countwishlist", wishlistService.findWishlistsByUserId(data).size());
        session.setAttribute("cart", cart);

        return "redirect:/";

    }

    @GetMapping("logout")
    public String logout(Model model, HttpServletRequest req, SessionStatus status) {
        HttpSession session = req.getSession();
        status.setComplete();
        req.removeAttribute("id");

        session.setAttribute("id", null);
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("chi-tiet/{id}")
    public String productDetail(Model model, @PathVariable("id") String id) {
        model.addAttribute("pros", productService.findbyStatus());
        model.addAttribute("product", productService.getById(id));
        model.addAttribute("wishlist", new Wishlist());
        model.addAttribute("cartItem", new CartItem());
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
    public String save(@Valid @ModelAttribute User user, BindingResult bindingResult, HttpServletRequest req, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("page", "register");
        if (bindingResult.hasErrors()) {
            model.addAttribute("user", user);
            model.addAttribute("page", "register");
            return "home";
        }
        if (userService.getUser(user.getUsername()) != null) {
            model.addAttribute("err", "userName đã tồn tại");
            model.addAttribute("page", "register");
            return "home";
        }
        String password = Cipher.GenerateMD5(user.getPassword());
        user.setPassword(password);
        user.setRole(false);
        user.setStatus(true);
        userService.save(user);
        return "redirect:/dang-nhap";


    }

    @GetMapping("my-account")
    public String editUser(@ModelAttribute("id") int id, Model model) {
        List<Order> orders = orderService.findByUserId(id);
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("resetpassword", userService.getById(id));
        model.addAttribute("orders", orders);
        model.addAttribute("page", "myaccount");
        return "home";
    }

    @PostMapping("update")
    public String update(@ModelAttribute User user, @RequestParam("file") MultipartFile file, HttpServletRequest req, Model model) {
        if (file != null && !file.isEmpty()) {
            // nếu tải tệp mới
            String UploadRootPath = req.getServletContext().getRealPath("resources/images");
            String imageUploadPath = UploadRootPath + "/" + file.getOriginalFilename();

            try {
                //Lưu ảnh tệp mới
                File destination = new File(imageUploadPath);
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                user.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error", e.getMessage());
                System.out.println(e.getMessage());
                model.addAttribute("user", user);
                model.addAttribute("page", "myaccount");
                return "home";
            }

        } else {
            var userOld = userService.getById(user.getId());
            user.setImage(userOld.getImage());
        }
        var dateOld = userService.getById(user.getId());
        user.setCreated_at(dateOld.getCreated_at());
        user.setRole(user.isRole());
        user.setPassword(dateOld.getPassword());
        user.setStatus(dateOld.isStatus());
        user.setAddress(user.getAddress());
        user.setEmail(user.getEmail());
        userService.update(user);

        return "redirect:/";
    }

    @PostMapping("resetpassword")
    public String resetpassword(@ModelAttribute User resetpassword, HttpServletRequest req, Model model) {

        return "";
    }

    @GetMapping("wishlist")
    public String wishlist(Model model, @ModelAttribute("id") int id) {
        model.addAttribute("products", productService.getAll());
        model.addAttribute("wishlist", wishlistService.findWishlistsByUserId(id));
        model.addAttribute("page", "wishlist");
        return "home";
    }

    @ModelAttribute("countWishlist")
    public Integer getCountWishlist(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("id");
        if (id == null) return null;
        return wishlistService.countWishlistInUser(id);
    }

    @PostMapping("addwishlist")
    public String addwishlist(Model model, @ModelAttribute Wishlist wishlist) {
        model.addAttribute("wishlist", wishlist);
        wishlistService.save(wishlist);
        return "redirect:/";
    }

    @GetMapping("delete-wishlist/{id}")
    public String deleteWishlist(Model model, @PathVariable int id) {
        wishlistService.delete(wishlistService.getById(id));
        return "redirect:/";
    }

    @GetMapping("addtocart/{proId}")
    public String addtocart(Model model, @PathVariable String proId, @ModelAttribute("id") int userId, @ModelAttribute CartItem cartItem) {
        int cart = cartService.findByUserId(userId).getId();
        var findCart = cartItemService.findByProductIdAndCartId(proId, cart);
        if (findCart == null) {
            cartItem.setProductId(proId);
            cartItem.setCartId(cartService.findByUserId(userId).getId());
        } else {
            findCart.setQuantity(findCart.getQuantity() + cartItem.getQuantity());
            cartItemService.update(findCart);
            return "redirect:/";
        }
        cartItemService.save(cartItem);
        return "redirect:/";
    }

    @GetMapping("cart")
    public String cart(Model model, @ModelAttribute("id") int id) {
        model.addAttribute("cartItem", cartItemService.findByCart(cartService.findByUserId(id)));
        model.addAttribute("page", "cart");
        return "home";
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("id");
        if (id == null) return null;
        return cartService.countItemsInCart(id);
    }

    @GetMapping("delete-cart/{id}")
    public String deleteCart(Model model, @PathVariable int id) {
        cartItemService.delete(cartItemService.getById(id));
        return "redirect:/";
    }

    @GetMapping("updateCart/{proId}/{quantity}")
    public String updateCart(Model model, @PathVariable("proId") String proId, @PathVariable("quantity") int quantity, HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("id");
        var data = cartItemService.findByProductIdAndCartId(proId, cartService.findByUserId(id).getId());
        data.setQuantity(quantity);
        cartItemService.update(data);
        return "redirect:/cart";
    }

    @GetMapping("order-detail/{orderId}")
    public String orderDetail(Model model, @PathVariable int orderId) {
        model.addAttribute("orderItem", orderItemService.findByOrderId(orderId));
        model.addAttribute("order", orderService.getById(orderId));
        model.addAttribute("page", "order-detail");
        return "home";
    }
}
