package com.bkap.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.validator.constraints.UniqueElements;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Brands")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Brand {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "brandName", columnDefinition = "NVARCHAR(50)")
    @UniqueElements(message = "Tên nhãn hàng đã tồn tại")
    @NotEmpty(message = "Tên nhãn hàng không được để trống")
    private String brandName;
    @Column(name = "image")
    private String image;
    @Column(name = "created_at")
    @Temporal(TemporalType.DATE)
    @CreationTimestamp
    private Date created_at;
    @Column(name = "status")
    private boolean status;
    @Transient
    private int productCount;

    @OneToMany(mappedBy = "brand", fetch = FetchType.LAZY)
    private List<Product> products;
}
