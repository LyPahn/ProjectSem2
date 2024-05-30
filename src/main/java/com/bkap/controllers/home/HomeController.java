package com.bkap.controllers.home;

import com.bkap.entities.User;
import com.bkap.services.*;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
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
    public String loginUser(Model model){
        model.addAttribute("page","login");
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
        userService.save(user);
        return "redirect:/dang-nhap";
    }
}
