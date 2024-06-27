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
    Page<Product> findProductsByCategoryId(Integer categoryId, int page, int size, Sort sort);
    Page<Product> findProductsByBrandId(Integer brandId, int page, int size, Sort sort);
    Page<Product> findAll(int page, int size, Sort sort);
    Page<Product> search(String keyword, int page, int size, Sort sort);
    Page<Product> search(double min, double max, int page, int size, Sort sort);
}
