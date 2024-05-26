package com.bkap.services.impl;

import com.bkap.entities.Category;
import com.bkap.repository.CategoryRepository;
import com.bkap.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@RequiredArgsConstructor
@Service
public class CategoryImpl implements CategoryService {
    private final CategoryRepository categoryRepository;
    @Override
    public List<Category> getAll() {

        return categoryRepository.findAll();
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
}
