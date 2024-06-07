package com.bkap.services.impl;

import com.bkap.entities.Cart;
import com.bkap.entities.Cart_item;
import com.bkap.repository.CartRepository;
import com.bkap.repository.Cart_itemRepository;
import com.bkap.services.CartService;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;
    private final Cart_itemRepository cart_itemRepository;
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
    public Cart_item updateCartItemQuantity(Integer cartId, Integer quantity) {
        Optional<Cart_item> cartItemOpt = cart_itemRepository.findById(cartId);
        if (!cartItemOpt.isPresent()) {
            throw new RuntimeException("Cart item not found");
        }

        Cart_item cartItem = cartItemOpt.get();
        cartItem.setQuantity(quantity);

        return cart_itemRepository.save(cartItem);
    }
}
