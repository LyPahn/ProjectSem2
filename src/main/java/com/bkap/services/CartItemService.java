package com.bkap.services;

import com.bkap.entities.Cart;
import com.bkap.entities.CartItem;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartItemService extends GenericService<CartItem , Integer> {
    List<CartItem> findByCart(Cart cart);
    CartItem findByProductIdAndCartId(String productId , int cartId);
}
