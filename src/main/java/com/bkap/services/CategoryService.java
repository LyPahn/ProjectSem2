package com.bkap.services;

import com.bkap.entities.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryService extends GenericService<Category , Integer> {
    public List<Category> findByStatusIsTrue();
}
