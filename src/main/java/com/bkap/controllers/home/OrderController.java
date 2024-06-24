package com.bkap.controllers.home;

import com.bkap.entities.*;
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
    private final OrderStatusService orderStatusService;
    private final UserService userService;

    @GetMapping("")
    public String Checkout(Model model , @SessionAttribute("id") int id) {
        model.addAttribute("cartItem" , cartItemService.findByCart(cartService.findByUserId(id)));
        model.addAttribute("user" , userService.findUserById(id));
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

    @PostMapping("saveOrder/{total}")
    public String saveOrder(@ModelAttribute("user") User user, @PathVariable Float total, Model model , HttpServletRequest req) {
        Order order = new Order();
        Integer userId = (Integer) req.getSession().getAttribute("id");
        List<CartItem> cartItems = cartItemService.findByCart(cartService.findByUserId(userId));
        order.setUserId(userId);
        order.setOrderStatusId(orderStatusService.getById(1));
        order.setPrice(total);
        orderService.save(order);
        for (CartItem cartItem : cartItems) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(order.getId());
            orderItem.setQuantity(cartItem.getQuantity());
            orderItem.setProductId(cartItem.getProductId());
            orderItem.setPrice(cartItem.getProduct().getPrice() * cartItem.getQuantity());
            orderItemService.save(orderItem);
        }

        cartService.clearCart(userId);

        return "redirect:/";
    }


}
