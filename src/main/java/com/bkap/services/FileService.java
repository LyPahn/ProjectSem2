package com.bkap.services;

import com.bkap.entities.Images;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface FileService {
    List<Images> getAll();
    void saveAllList(Images image);
    void deleteAll(String proId);
}
