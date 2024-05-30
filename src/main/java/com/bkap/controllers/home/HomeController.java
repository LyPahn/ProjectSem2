package com.bkap.controllers.home;

import com.bkap.entities.User;
import com.bkap.services.BrandService;
import com.bkap.services.CategoryService;
import com.bkap.services.ProductService;
import com.bkap.services.UserService;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("")
public class HomeController {
    private final CategoryService categoryService;
    private final ProductService productService;
    private final BrandService brandService;
    private final UserService userService;
    @GetMapping({"/","trang-chu"})
    public String index(Model model){
        model.addAttribute("categories" , categoryService.getAll());
        model.addAttribute("products", productService.getAll());
        model.addAttribute("brands", brandService.getAll());
        model.addAttribute("page" , "index");
        return "home";
    }
    @GetMapping("gioi-thieu")
    public String about(Model model) {
        model.addAttribute("page", "about");
        return "home";
    }

    @GetMapping("bai-viet")
    public String blog(Model model) {
        model.addAttribute("page", "blog");
        return "home";
    }

    @GetMapping("lien-he")
    public String contact(Model model) {
        model.addAttribute("page","contact");
        return "home";
    }

    @GetMapping("dang-nhap")
    public String loginUser(Model model) {
        return "home/login";
    }

    @PostMapping("dang-nhap")
    public String loginSave(String username, String password, HttpServletRequest req, Model model) {
        User user = userService.getUser(username);
        String passMD5 = Cipher.GenerateMD5(password);
        if ( user == null|| !user.getPassword().equals(passMD5)) {
            model.addAttribute("msg" , "Thông tin đăng nhập sai");
            return "login";
        }

        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("id",user.getId());
        session.setAttribute("picture",user.getImage());
        session.setAttribute("fullName", user.getLastName() + "" + user.getFirstName());
        session.setAttribute("role" , user.isRole());

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
        model.addAttribute("page", "detail");
        return "home";
    }
}
