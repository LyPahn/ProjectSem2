package com.bkap.controllers.home;

import com.bkap.services.BrandService;
import com.bkap.services.CategoryService;
import com.bkap.services.ProductService;
import com.bkap.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("wishlist")
public class WishlistController {
    private final CategoryService categoryService;
    private final ProductService productService;
    private final BrandService brandService;
    private final UserService userService;
    @GetMapping("")
    public String wishlist(Model model){
        model.addAttribute("products", productService.getAll());
        model.addAttribute("page" , "wishlist");
        return "home";
    }
}
