package com.bkap.controllers.home;

import com.bkap.entities.Order;
import com.bkap.services.CartItemService;
import com.bkap.services.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("order")
public class OrderController {
    private final CartService cartService;
    private final CartItemService cartItemService;

    @GetMapping("/{id}")
    public String Checkout(Model model , @PathVariable int id) {
        model.addAttribute("cart" , cartItemService.findByCart(cartService.findByUserId(id)));
        model.addAttribute("order", new Order());
        model.addAttribute("page","checkout");
        return "home";
    }

}
