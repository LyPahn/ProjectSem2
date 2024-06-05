package com.bkap.services;

import com.bkap.entities.Wishlist;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface WishlistService extends GenericService<Wishlist , Integer> {

    List<Wishlist> findWishlistsByUserId(Integer userId);
}
