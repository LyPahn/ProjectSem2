package com.bkap.services.impl;

import com.bkap.entities.Product;
import com.bkap.repository.ImagesRepository;
import com.bkap.repository.ProductRepository;
import com.bkap.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductImpl implements ProductService {
    private final ProductRepository productRepository;
    private final ImagesRepository imagesRepository;
    @Override
    public List<Product> getAll() {
        return productRepository.findAll();
    }

    @Override
    public Product getById(String id) {
        return productRepository.findById(id).orElseThrow(() -> new RuntimeException("Không tìm thấy sản phẩm"));
    }

    @Override
    public Product save(Product product) {
        return productRepository.save(product);
    }

    @Override
    public Product update(Product product) {
        return productRepository.save(product);
    }

    @Override
    public void delete(Product product) {
        imagesRepository.deleteAllByProductId(product.getId());
        productRepository.delete(product);
    }
}
