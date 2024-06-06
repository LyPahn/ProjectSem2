package com.bkap.services.impl;

import com.bkap.entities.Cart;
import com.bkap.entities.Cart_item;
import com.bkap.repository.Cart_itemRepository;
import com.bkap.services.Cart_itemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class Cart_itemServiceImpl implements Cart_itemService {
    private final Cart_itemRepository cart_itemRepository;

    @Override
    public List<Cart_item> getAll() {
        return cart_itemRepository.findAll();
    }

    @Override
    public Cart_item getById(Integer id) {
        return cart_itemRepository.findById(id).orElseThrow(()->new RuntimeException("Cart_item not found"));
    }

    @Override
    public Cart_item save(Cart_item cartItem) {
        return cart_itemRepository.save(cartItem);
    }

    @Override
    public Cart_item update(Cart_item cartItem) {
        return cart_itemRepository.save(cartItem);
    }

    @Override
    public void delete(Cart_item cartItem) {
        cart_itemRepository.delete(cartItem);
    }

    @Override
    public List<Cart_item> findByCart(Cart cart) {
        return cart_itemRepository.findByCart(cart);
    }
}
