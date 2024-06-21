package com.bkap.services;

import com.bkap.entities.OrderItem;
import com.bkap.repository.OrderItemRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderItemService extends GenericService<OrderItem, Integer> {
    public List<OrderItem> findByOrderId(Integer orderId);
}
