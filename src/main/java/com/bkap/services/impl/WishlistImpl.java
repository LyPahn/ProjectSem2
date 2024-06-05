package com.bkap.services.impl;

import com.bkap.entities.Wishlist;
import com.bkap.repository.WishlistRepository;
import com.bkap.services.WishlistService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class WishlistImpl implements WishlistService {
    private final WishlistRepository wishlistRepository;

    @Override
    public List<Wishlist> getAll() {
        return wishlistRepository.findAll();
    }

    @Override
    public Wishlist getById(Integer id) {
        return wishlistRepository.findById(id).orElseThrow(()-> new RuntimeException("Wishlist not found"));
    }

    @Override
    public Wishlist save(Wishlist wishlist) {
        return wishlistRepository.save(wishlist);
    }

    @Override
    public Wishlist update(Wishlist wishlist) {
        return null;
    }

    @Override
    public void delete(Wishlist wishlist) {
        wishlistRepository.delete(wishlist);
    }

    @Override
    public List<Wishlist> findWishlistsByUserId(Integer userId) {
        return wishlistRepository.findWishlistByUserId(userId);
    }
}
