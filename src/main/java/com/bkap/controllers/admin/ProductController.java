package com.bkap.controllers.admin;

import com.bkap.entities.Images;
import com.bkap.entities.Product;
import com.bkap.services.BrandService;
import com.bkap.services.CategoryService;
import com.bkap.services.FileService;
import com.bkap.services.ProductService;
import com.bkap.services.impl.FIleUploadUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/admin/product")
@RequiredArgsConstructor
public class ProductController {
    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;
    private final FileService fileService;

    @GetMapping("")
    public String index(Model model) {
        model.addAttribute("products" , productService.getAll());
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("page" , "product/index");
        return "admin";
    }

    @GetMapping("/add-product")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("brands" , brandService.getAll());
        model.addAttribute("page" , "product/add");
        return "admin";
    }

    @PostMapping("save")
    public String save(@ModelAttribute Product product, Model model,
                       @RequestParam("file") MultipartFile file,
                       HttpServletRequest req, @RequestParam("files") MultipartFile[] files
                      ) {
        if(file != null && !file.isEmpty()) {
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);
            File destination = new File(f.getAbsolutePath()+"/"+file.getOriginalFilename());

            try {
                file.transferTo(destination);

            } catch (Exception e) {
                model.addAttribute("page", "product/add");
                model.addAttribute("categories", productService.getAll());
                model.addAttribute("product", product);
                return "admin";
            }
            product.setImage(file.getOriginalFilename());
            productService.save(product);
        }
        if (files != null && files.length > 0) {
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);
            for(MultipartFile image : files) {
                File destination = new File(f.getAbsolutePath()+"/"+image.getOriginalFilename());
                Images img = new Images(image.getOriginalFilename() , product.getId());
                fileService.saveAllList(img);
            }
        }
        return "redirect:/admin/product";
    }

    @GetMapping("edit/{id}")
    public String editProduct(Model model, @PathVariable String id) {
        model.addAttribute("product", productService.getById(id));
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("page" , "product/edit");
        return "admin";
    }

    @PostMapping("update")
    public String update(@ModelAttribute Product product, Model model , HttpServletRequest req , @RequestParam("file") MultipartFile file) {
        if(file != null && !file.isEmpty()) {
            // nếu tải tệp mới
            String UploadRootPath = req.getServletContext().getRealPath("resources/images");
            String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();

            try {
                //Lưu ảnh tệp mới
                File destination = new File(imageUploadPath);
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                product.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error",e.getMessage());
                model.addAttribute("product", product);
                model.addAttribute("page", "product/edit");
                return "admin";
            }

        }else {
            var productOld = productService.getById(product.getId());
            product.setImage(productOld.getImage());
        }
        var dateOld = productService.getById(product.getId());
        product.setCreateDate(dateOld.getCreateDate());
        productService.update(product);

        return "redirect:/admin/product";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable String id , Model model) {
//        fileService.deleteAll(id);
        productService.delete(productService.getById(id));

        return "redirect:/admin/product";
    }
}
