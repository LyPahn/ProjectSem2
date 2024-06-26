package com.bkap.services.impl;

import com.bkap.entities.Product;
import com.bkap.repository.BrandRepository;
import com.bkap.repository.ImagesRepository;
import com.bkap.repository.ProductRepository;
import com.bkap.services.BrandService;
import com.bkap.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductImpl implements ProductService {
    private final ProductRepository productRepository;
    private final ImagesRepository imagesRepository;
    private final BrandService brandService;
    private final BrandRepository brandRepository;

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
        productRepository.delete(product);
    }

    @Override
    public List<Product> findByCategory(Integer categoryId) {
        return productRepository.findTop8AndStatusIsTrueByOrderByCategory(categoryId);
    }

    @Override
    public List<Product> findbycreateDate() {
        return productRepository.findTop8AndStatusIstrueByOrderByCreateDateDesc();
    }

    @Override
    public List<Product> findbyStatus() {
        return productRepository.findByStatusTrue();
    }

    @Override
    public Page<Product> findProductsByCategoryId(Integer categoryId, int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findProductsByCategoryIdAndStatusIsTrue(categoryId, pageable);
    }

    @Override
    public Page<Product> findProductsByBrandId(Integer brandId, int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findProductsByBrandIdAndStatusIsTrue(brandId, pageable);
    }

    @Override
    public Page<Product> findAll(int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findAll(pageable);
    }

    @Override
    public Page<Product> search(String keyword, int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findByProductNameContainingIgnoreCaseAndStatusIsTrue(keyword, pageable);
    }

    @Override
    public Page<Product> search(double min, double max, int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findByPriceBetweenAndStatusIsTrue(min, max, pageable);
    }
}
