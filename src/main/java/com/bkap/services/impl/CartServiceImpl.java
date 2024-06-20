package com.bkap.services.impl;

import com.bkap.entities.Cart;
import com.bkap.entities.CartItem;
import com.bkap.repository.CartRepository;
import com.bkap.repository.CartItemRepository;
import com.bkap.services.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    @Override
    public List<Cart> getAll() {
        return cartRepository.findAll();
    }

    @Override
    public Cart getById(Integer id) {
        return cartRepository.findById(id).orElseThrow(()-> new RuntimeException("Không tìm thấy id"));
    }

    @Override
    public Cart save(Cart cart) {
        return cartRepository.save(cart);
    }

    @Override
    public Cart update(Cart cart) {
        return cartRepository.save(cart);
    }

    @Override
    public void delete(Cart cart) {
        cartRepository.delete(cart);
    }

    @Override
    public Cart findByUserId(Integer userId) {
        return cartRepository.findByUserId(userId);
    }

    @Override
    public Integer countItemsInCart(Integer userId) {
        return cartItemRepository.countCartItemsByUserId(userId);
    }

    @Override
    public void clearCart(Integer userId) {
        List<CartItem> cartItems = cartItemRepository.findByCart(cartRepository.findByUserId(userId));
        cartItemRepository.deleteAll(cartItems);
    }
}
