package com.bkap.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[Order]")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int orderId;
    private String productId;
    private float price;
    private int quantity;
    private int userId;
    @ManyToOne
    @JoinColumn(name = "orderStatusId")
    private OrderStatus orderStatusId;

    @ManyToOne
    @JoinColumn(name = "userId" , insertable = false , updatable = false)
    private User user;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="productId", referencedColumnName = "id", insertable = false, updatable = false)
    private Product product;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="orderId", referencedColumnName = "id", insertable = false, updatable = false)
    private Order order;


}
