package com.bkap.controllers.admin;

import com.bkap.entities.User;
import com.bkap.services.OrderService;
import com.bkap.services.UserService;
import com.bkap.services.WishlistService;
import com.bkap.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/user")
public class UserController {
    private final UserService userService;
    private final OrderService orderService;
    private final WishlistService wishlistService;

    @GetMapping("")
    public String index(Model model) {
        model.addAttribute("users" , userService.getAll());
        model.addAttribute("page", "user/index");
        return "admin";
    }

    @GetMapping("add-user")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("page", "user/add");
        return "admin";
    }

    @PostMapping("save")
    public String save(Model model, @ModelAttribute User user , HttpServletRequest req , @RequestParam("file") MultipartFile file) {
        if(file != null && !file.isEmpty()) {
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);
            File destination = new File(f.getAbsolutePath()+"/"+file.getOriginalFilename());
            System.out.println(destination);
            try {
                file.transferTo(destination);
            } catch (Exception e) {
                model.addAttribute("error", e.getMessage());
                model.addAttribute("user", user);
                model.addAttribute("page" , "user/add");
            }
            user.setImage(file.getOriginalFilename());
            String password = Cipher.GenerateMD5(user.getPassword());
            user.setPassword(password);
            userService.save(user);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("edit-user/{id}")
    public String editUser(@PathVariable int id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("page", "user/edit");
        return "admin";
    }

    @GetMapping("detail-user/{id}")
    public String detailUser(@PathVariable int id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("order", orderService.findByUserId(id));
        model.addAttribute("wishlist", wishlistService.findWishlistsByUserId(id));
        model.addAttribute("page", "user/detail");
        return "admin";
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
                model.addAttribute("user", user);
                model.addAttribute("page", "user/edit");
                return "admin";
            }

        }else {
            var userOld = userService.getById(user.getId());
            user.setImage(userOld.getImage());
        }
        var dateOld = userService.getById(user.getId());
        user.setCreated_at(dateOld.getCreated_at());
        userService.update(user);

        return "redirect:/admin/user";
    }

    @GetMapping( "delete/{id}")
    public String delete(@PathVariable int id, Model model) {
        userService.delete(userService.getById(id));
        model.addAttribute("page" , "user/index");
        return "redirect:/admin";
    }

}
