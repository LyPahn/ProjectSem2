package com.bkap.services.impl;

import com.bkap.entities.Brand;
import com.bkap.repository.BrandRepository;
import com.bkap.services.BrandService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class BrandImpl implements BrandService {
    private final BrandRepository brandRepository;
    @Override
    public List<Brand> getAll() {
        return brandRepository.findAll();
    }

    @Override
    public Brand getById(Integer id) {
        return brandRepository.findById(id).orElseThrow(()->new RuntimeException("Không tìm thấy nhãn hàng"));
    }

    @Override
    public Brand save(Brand brand) {
        return brandRepository.save(brand);
    }

    @Override
    public Brand update(Brand brand) {
        return brandRepository.save(brand);
    }

    @Override
    public void delete(Brand brand) {
        brandRepository.delete(brand);
    }
}
