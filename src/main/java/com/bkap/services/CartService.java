package com.bkap.services;

import com.bkap.entities.Cart;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.stereotype.Service;

@Service
public interface CartService extends GenericService<Cart , Integer> {
    public Cart findByUserId(Integer userId);
    
}
