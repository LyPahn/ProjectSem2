package com.bkap.repository;

import com.bkap.entities.Cart;
import com.bkap.entities.Cart_item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
    public Cart findByUserId(Integer userId);
}
