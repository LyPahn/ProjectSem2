package com.bkap.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;
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
    private int userId;
    @ManyToOne
    @JoinColumn(name = "orderStatusId")
    private OrderStatus orderStatusId;
    @Column(name = "orderDate")
    @Temporal(TemporalType.DATE)
    @CreationTimestamp
    private Date orderDate;
    @Column(name = "price")
    private float price;

    @ManyToOne
    @JoinColumn(name = "userId" , insertable = false , updatable = false)
    private User user;

    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY , cascade = CascadeType.ALL)
    private List<OrderItem> orderItems;

}









