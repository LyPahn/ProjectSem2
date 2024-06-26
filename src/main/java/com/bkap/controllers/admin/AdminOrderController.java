package com.bkap.controllers.admin;

import com.bkap.entities.Order;
import com.bkap.entities.OrderItem;
import com.bkap.entities.OrderStatus;
import com.bkap.services.OrderItemService;
import com.bkap.services.OrderService;
import com.bkap.services.OrderStatusService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("admin/order")
@RequiredArgsConstructor
public class AdminOrderController {
    private final OrderService orderService;
    private final OrderItemService orderItemService;
    private final OrderStatusService orderStatusService;

    @GetMapping("")
    public String index(Model model) {
        model.addAttribute("orders", orderService.getAll());
        model.addAttribute("orderStatus" , orderStatusService.getAll());
        model.addAttribute("page" , "order/index");
        return "admin";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable int id , Model model) {
        List<OrderItem> orderItems = orderItemService.findByOrderId(id);
        for (OrderItem orderItem : orderItems) {
            orderItemService.delete(orderItem);
        }
        orderService.delete(orderService.getById(id));
        return "redirect:/admin/order";
    }

    @GetMapping("update/{id}/{value}")
    public String update(@PathVariable int id ,@PathVariable int value, Model model) {
        Order order = orderService.getById(id);
        OrderStatus orderStatus = orderStatusService.getById(value);
        order.setOrderStatusId(orderStatus);
        orderService.update(order);
        model.addAttribute("page", "order/index");
        return "admin";

    }
}
