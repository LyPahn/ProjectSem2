package com.bkap.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;

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
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name = "email")
    private String email;
    @Column(name = "firstName" , columnDefinition = "NVARCHAR(50)")
    private String firstName;
    @Column(name = "lastName" , columnDefinition = "NVARCHAR(50)")
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
}
