package com.bkap.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    @Id
    @Column(name = "id")
    private String id;
    @Column(name = "productName" , columnDefinition = "NVARCHAR(200)")
    private String productName;
    @Column(name = "price")
    private float price;
    @Column(name = "priceOld")
    private float priceOld;
    @Column(name = "description",columnDefinition = "NTEXT")
    private String description;
    @Column(name = "image")
    private String image;
    @Column(name = "size")
    private boolean size;
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "categoryId")
    private int categoryId;
    @Column(name = "brandId")
    private int brandId;
    @Column(name = "createDate")
    @Temporal(TemporalType.DATE)
    @CreationTimestamp
    private Date createDate;
    @Column(name = "status")
    private boolean status;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="categoryId", referencedColumnName = "id", insertable = false, updatable = false)
    private Category category;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="brandId", referencedColumnName = "id", insertable = false, updatable = false)
    private Brand brand;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY , cascade = CascadeType.ALL)
    private List<Images> images;

//    @OneToMany(mappedBy = "product_wishlist", fetch = FetchType.LAZY , cascade = CascadeType.ALL)
//    private List<Wishlist> wishlists;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "productId" , referencedColumnName = "id")
    private Wishlist wishlist;


}
