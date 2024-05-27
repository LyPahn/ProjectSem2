package com.bkap.controllers.admin;

import com.bkap.entities.User;
import com.bkap.services.UserService;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {
    private final UserService userService;

    @GetMapping("")
    public String admin(Model model){
        model.addAttribute("page", "index");
        return "admin";
    }

    //GET: admin/login
    @GetMapping( "login")
    public String login(Model model) {

        return "admin/login";
    }
    //POST: admin/login (xử lý login)
    @PostMapping("login")
    public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
        User acc = userService.getUser(username);
        String passMd5 = Cipher.GenerateMD5(password);
        if (acc == null || !acc.getPassword().equals(passMd5) || !acc.isRole()) {
            model.addAttribute("msg", "Thông tin đăng nhập sai hoặc bạn không có quyền!");
            return "admin/login";
        }
        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("adminid", acc.getId());
        session.setAttribute("adminpicture", acc.getImage());
        session.setAttribute("adminusername", acc.getUsername());
        session.setAttribute("emailadmin", acc.getEmail());
        session.setAttribute("adminfullname", acc.getFirstName() + " " + acc.getLastName());
        return "redirect:/admin";
    }

    //GET: admin/logout
    @GetMapping("logout")
    public String logout(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.invalidate();

        return "redirect:/admin/login";
    }


}
