package com.bkap.controllers.home;

import com.bkap.entities.CartItem;
import com.bkap.entities.Order;
import com.bkap.entities.OrderItem;
import com.bkap.services.*;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("order")
@SessionAttributes("id")
public class OrderController {
    private final CartService cartService;
    private final CartItemService cartItemService;
    private final WishlistService wishlistService;
    private final OrderService orderService;
    private final OrderItemService orderItemService;

    @GetMapping("")
    public String Checkout(Model model , @SessionAttribute("id") int id) {
        model.addAttribute("cartItem" , cartItemService.findByCart(cartService.findByUserId(id)));
        model.addAttribute("order", new Order());
        model.addAttribute("page","checkout");
        return "home";
    }

    @ModelAttribute("countWishlist")
    public Integer getCountWishlist(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("id");
        if (id == null)
            return null;
        return wishlistService.countWishlistInUser(id);
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("id");
        if (id == null)
            return null;
        return cartService.countItemsInCart(id);
    }

    @PostMapping("saveOrder")
    public String saveOrder(@ModelAttribute("order") Order order, Model model , HttpServletRequest req) {
        Integer userId = (Integer) req.getSession().getAttribute("id");
        List<CartItem> cartItems = cartItemService.findByCart(cartService.findByUserId(userId));

        order.setUserId(userId);
        orderService.save(order);

        for (CartItem cartItem : cartItems) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(order.getId());
            orderItem.setQuantity(cartItem.getQuantity());
            orderItem.setProductId(cartItem.getProductId());
            orderItemService.save(orderItem);
        }
        cartService.clearCart(userId);

        return "redirect:/";
    }


}
