package com.bkap.services.impl;

import com.bkap.entities.OrderItem;
import com.bkap.repository.OrderItemRepository;
import com.bkap.services.OrderItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderItemServiceImpl implements OrderItemService {
    private final OrderItemRepository orderItemRepository;
    @Override
    public List<OrderItem> getAll() {
        return orderItemRepository.findAll();
    }

    @Override
    public OrderItem getById(Integer id) {
        return orderItemRepository.findById(id).orElseThrow(()-> new RuntimeException("OrderItem Not Found"));
    }

    @Override
    public OrderItem save(OrderItem orderItem) {
        return orderItemRepository.save(orderItem);
    }

    @Override
    public OrderItem update(OrderItem orderItem) {
        return orderItemRepository.save(orderItem);
    }

    @Override
    public void delete(OrderItem orderItem) {
        orderItemRepository.delete(orderItem);
    }

    @Override
    public List<OrderItem> findByOrderId(Integer orderId) {
        return orderItemRepository.findByOrderId(orderId);
    }
}
