package com.bkap.services.impl;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.InputStream;
import java.nio.file.StandardCopyOption;

public class FIleUploadUtil {
    public static void saveFile(String fileName ,String uploadDir , MultipartFile file) throws IOException {
        Path uploadRootPath = Paths.get("D:\\code\\ProjectSem2\\ProjectSem2\\src\\main\\webapp\\resources\\images");
        if (!Files.exists(uploadRootPath)) {
            Files.createDirectories(uploadRootPath);
        }
        try(InputStream inputStream= file.getInputStream()) {
            Path filePath=uploadRootPath.resolve(fileName);
            Files.copy(inputStream,filePath, StandardCopyOption.REPLACE_EXISTING);


        }catch (IOException ioException){


        }






    }
}
