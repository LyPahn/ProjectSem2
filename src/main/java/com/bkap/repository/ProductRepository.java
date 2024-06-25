package com.bkap.repository;

import com.bkap.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, String> {
    public List<Product> findTop8ByOrderByCreateDateDesc();
    public List<Product> findByStatusTrue();
    Integer countProductByCategoryIdAndStatusIsTrue(Integer categoryId);
    Integer countProductByBrandIdAndStatusIsTrue(Integer brandId);
    List<Product> findProductsByCategoryId(Integer categoryId);
    List<Product> findProductsByBrandId(Integer brandId);
    Page<Product> findAll(Pageable pageable);
    Page<Product> findByProductNameContainingIgnoreCase(String keyword, Pageable pageable);
    @Query("select p from Product p where p.price >= :min and p.price <= :max order by p.price ASC ")
    Page<Product> findByPriceBetween(double min, double max, Pageable pageable);
}