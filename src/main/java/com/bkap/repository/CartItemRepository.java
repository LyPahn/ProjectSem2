package com.bkap.repository;

import com.bkap.entities.Cart;
import com.bkap.entities.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {
    List<CartItem> findByCart(Cart cart);

    @Query("select count(ci) from CartItem ci where ci.cart.user.id = :userId")
    Integer countCartItemsByUserId(Integer userId);

   CartItem findByProductIdAndCartId(String productId , Integer cartId);
}
