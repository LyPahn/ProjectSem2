package com.bkap.services;

import com.bkap.entities.OrderItem;
import com.bkap.repository.OrderItemRepository;
import org.springframework.stereotype.Service;

@Service
public interface OrderItemService extends GenericService<OrderItem, Integer> {
}
