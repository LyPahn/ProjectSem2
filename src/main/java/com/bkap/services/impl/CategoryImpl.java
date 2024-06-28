package com.bkap.services.impl;

import com.bkap.entities.Category;
import com.bkap.repository.CategoryRepository;
import com.bkap.repository.ProductRepository;
import com.bkap.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Service
public class CategoryImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    private final ProductRepository productRepository;

    @Override
    public List<Category> getAll() {
        return categoryRepository.findAll().stream()
                .map(category -> {
                    category.setProductCount(productRepository.countProductByCategoryIdAndStatusIsTrue(category.getId()));
                    return category;
                }).collect(Collectors.toList());
    }

    @Override
    public Category getById(Integer id) {
        return categoryRepository.findById(id).orElseThrow(() -> new RuntimeException("không tìm thấy danh mục"));
    }

    @Override
    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    @Override
    public Category update(Category category) {
        return categoryRepository.save(category);
    }

    @Override
    public void delete(Category category) {
        categoryRepository.delete(category);
    }


    @Override
    public List<Category> findByStatusIsTrue() {
        return categoryRepository.findByStatusIsTrue();
    }
}
