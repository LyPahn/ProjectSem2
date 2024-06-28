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
    @Query("select p from Product p where p.categoryId = :categoryId and p.status = true ")
    List<Product> findTop8AndStatusIsTrueByOrderByCategory(Integer categoryId);
    public List<Product> findTop8AndStatusIstrueByOrderByCreateDateDesc();
    public List<Product> findByStatusTrue();
    Integer countProductByCategoryIdAndStatusIsTrue(Integer categoryId);
    Integer countProductByBrandIdAndStatusIsTrue(Integer brandId);
    Page<Product> findProductsByCategoryIdAndStatusIsTrue(Integer categoryId, Pageable pageable);
    Page<Product> findProductsByBrandIdAndStatusIsTrue(Integer brandId, Pageable pageable);
    Page<Product> findAllByStatusIsTrue(Pageable pageable);
    Page<Product> findByProductNameContainingIgnoreCaseAndStatusIsTrue(String keyword, Pageable pageable);
    @Query("select p from Product p where p.price >= :min and p.price <= :max order by p.price ASC ")
    Page<Product> findByPriceBetweenAndStatusIsTrue(double min, double max, Pageable pageable);
}