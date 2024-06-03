package com.bkap.services.impl;

import com.bkap.entities.Brand;
import com.bkap.repository.BrandRepository;
import com.bkap.repository.ProductRepository;
import com.bkap.services.BrandService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class BrandImpl implements BrandService {
    private final BrandRepository brandRepository;
    private final ProductRepository productRepository;

    @Override
    public List<Brand> getAll() {
        return brandRepository.findAll().stream()
                .map(brand -> {
                    brand.setProductCount(productRepository.countProductByBrandIdAndStatusIsTrue(brand.getId()));
                    return brand;
                }).collect(Collectors.toList());
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

    @Override
    public List<Brand> findByStatusIsTrue() {
        return brandRepository.findByStatusIsTrue();
    }
}
