package com.bkap.services;

import com.bkap.entities.Cart;
import com.bkap.entities.Cart_item;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface Cart_itemService extends GenericService<Cart_item , Integer> {
    List<Cart_item> findByCart(Cart cart);
}
