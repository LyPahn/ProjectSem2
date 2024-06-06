package com.bkap.repository;

import com.bkap.entities.Cart;
import com.bkap.entities.Cart_item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Cart_itemRepository extends JpaRepository<Cart_item, Integer> {
    List<Cart_item> findByCart(Cart cart);
}
