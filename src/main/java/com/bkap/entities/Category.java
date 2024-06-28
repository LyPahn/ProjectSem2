package com.bkap.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.Nationalized;
import org.hibernate.validator.constraints.UniqueElements;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Categories")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "cateName" , columnDefinition = "NVARCHAR(255)")
    @NotBlank(message = "Tên danh mục không được rỗng")

    private String cateName;
    @Column(name = "image")
    private String image;
    @Temporal(TemporalType.DATE)
    @CreationTimestamp
    @Column(name = "createDate")
    private Date created_at;
    @Column(name = "status")
    private boolean status;
    @Transient
    private int productCount;

    @OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
	private List<Product> products;
}
