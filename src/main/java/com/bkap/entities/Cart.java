package com.bkap.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Carts")
public class Cart {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "title" , columnDefinition = "NVARCHAR(200)")
    private String title;
    @Column(name = "price")
    private float price;
    @Column(name = "productId" ,columnDefinition = "NVARCHAR(200)")
    private String productId;
    @Column(name = "size")
    private int size;
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "userId")
    private int userId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="userId", referencedColumnName = "id", insertable = false, updatable = false)
    private User user;



}
