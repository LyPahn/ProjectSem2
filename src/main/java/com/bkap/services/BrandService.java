package com.bkap.services;

import com.bkap.entities.Brand;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BrandService extends GenericService<Brand , Integer> {
    public List<Brand> findByStatusIsTrue();
}
