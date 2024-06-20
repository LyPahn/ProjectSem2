package com.bkap.services;

import com.bkap.entities.Cart;
import com.bkap.entities.CartItem;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.stereotype.Service;

@Service
public interface CartService extends GenericService<Cart , Integer> {
    public Cart findByUserId(Integer userId);
    Integer countItemsInCart(Integer userId);
    public void clearCart(Integer userId);
}
