package com.bkap.services;

import com.bkap.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.rmi.Remote;
import java.util.List;

public interface ProductService extends GenericService<Product , String> {
    public List<Product> findbycreateDate();
    public List<Product> findbyStatus();
    List<Product> findProductsByCategoryId(Integer categoryId);
    List<Product> findProductsByBrandId(Integer brandId);
    Page<Product> findAll(int page, int size, Sort sort);
    Page<Product> search(String keyword, Pageable pageable);
    Page<Product> search(double min, double max, Pageable pageable);
}
