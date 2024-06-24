package com.bkap.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "username")
    @NotBlank(message = "UserName không được để trống")
    private String username;
    @Column(name = "password")
    @NotBlank(message = "Mật khẩu không được để trống")
    private String password;
    @Column(name = "email")
    @NotBlank(message = "Email không được để trống")
    private String email;
    @Column(name = "firstName" , columnDefinition = "NVARCHAR(50)")
    @NotBlank(message = "FirstName không được để trống")
    private String firstName;
    @Column(name = "lastName" , columnDefinition = "NVARCHAR(50)")
    @NotBlank(message = "lastName không được để trống")
    private String lastName;
    @Column(name = "address" , columnDefinition = "NVARCHAR(255)")
    private String address;
    @Column(name = "phone")
    private String phone;
    @Column(name = "status")
    private boolean status;
    @Column(name = "created_at")
    @CreationTimestamp
    @Temporal(TemporalType.DATE)
    private Date created_at;
    @Column(name = "image")
    private String image;
    @Column(name = "role")
    private boolean role;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY , cascade = CascadeType.ALL)
    private List<Wishlist> wishlists;

    @OneToOne(mappedBy = "user" , cascade = CascadeType.ALL)
    private Cart  cart;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<Order> orders;

    
}
