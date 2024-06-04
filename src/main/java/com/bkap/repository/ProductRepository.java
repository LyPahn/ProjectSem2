package com.bkap.repository;

import com.bkap.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
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
//    public List<Product> sortByPriceAsc();
//    public List<Product> sortByPriceDesc();
//    public List<Product> sortByName();
}