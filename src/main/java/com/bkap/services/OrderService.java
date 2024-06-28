package com.bkap.services;

import com.bkap.entities.Order;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService extends GenericService<Order , Integer>{
    public List<Order> findByUserId(Integer userId);
}
