package com.bkap.services.impl;

import com.bkap.entities.Images;
import com.bkap.repository.ImagesRepository;
import com.bkap.services.FileService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class FileServiceImpl implements FileService {
    private final ImagesRepository imagesRepository;
    @Override
    public List<Images> getAll() {
        return imagesRepository.findAll();
    }

    @Override
    public void saveAllList(Images image) {
        imagesRepository.save(image);
    }

    @Override
    public void deleteAll(String proId) {
       List<Images> images = imagesRepository.findAll();
       for (Images image : images) {
           imagesRepository.delete(image);
       }
//        imagesRepository.deleteAllByProductId(proId);
    }
}
