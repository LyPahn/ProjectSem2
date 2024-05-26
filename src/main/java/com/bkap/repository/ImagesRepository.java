package com.bkap.repository;

import com.bkap.entities.Images;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImagesRepository extends JpaRepository<Images, Integer> {
    void deleteAllByProductId(String productId);
}