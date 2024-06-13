package com.bkap.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name = "CartItems")
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int cartId;
    private int quantity;
    private String productId;
    private int size;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="productId", referencedColumnName = "id", insertable = false, updatable = false)
    private Product product;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CartId" , referencedColumnName = "id" , insertable = false , updatable = false)
    private Cart cart;
}
