package com.bkap.services;

import com.bkap.entities.Product;

import java.rmi.Remote;
import java.util.List;

public interface ProductService extends GenericService<Product , String> {
    public List<Product> findbycreateDate();
    public List<Product> findbyStatus();
    List<Product> findProductsByCategoryId(Integer categoryId);
}
