package com.bkap.controllers.admin;

import com.bkap.entities.Category;
import com.bkap.services.CategoryService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;


@Controller
@RequestMapping("admin/category")
@RequiredArgsConstructor
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping
    public String category(Model model){
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("page" , "category/index");
        return "admin";
    }

    @GetMapping("/add-category")
    public String addCategory(Model model){
        model.addAttribute("category", new Category());
       model.addAttribute("page" , "category/add");
        return "admin";
    }

    @PostMapping("/add-category")
    public String addCategory(@ModelAttribute Category category
            , @RequestParam("file") MultipartFile file
            , HttpServletRequest req, Model model){

        if(file != null && !file.isEmpty()) {
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);
            File destination = new File(f.getAbsolutePath()+"/"+file.getOriginalFilename());
            System.out.println(destination);
            try {
                file.transferTo(destination);
            } catch (Exception e) {
                model.addAttribute("error", e.getMessage());
                model.addAttribute("category", category);
                model.addAttribute("page" , "category/add");
            }
            category.setImage(file.getOriginalFilename());
            categoryService.save(category);
    }
        return "redirect:/admin/category";
    }

    @GetMapping("/edit-category/{id}")
    public String editCategory(Model model , @PathVariable int id){
        model.addAttribute("category" , categoryService.getById(id));
        model.addAttribute("page" , "category/edit");
        return "admin";
    }

    @PostMapping("/edit-category")
    public String updateCategory(Model model , @ModelAttribute("category") Category category , @RequestParam("file") MultipartFile file , HttpServletRequest req ){
        if(file != null && !file.isEmpty()) {
            // nếu tải tệp mới
            String UploadRootPath = req.getServletContext().getRealPath("images");
            String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();

            try {
                //Lưu ảnh tệp mới
                File destination = new File(imageUploadPath);
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                category.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error",e.getMessage());
                model.addAttribute("category", category);
                model.addAttribute("page", "category/edit");
                return "admin";
            }

        }else {
            var categoryOld = categoryService.getById(category.getId());
            category.setImage(categoryOld.getImage());
        }
        var dateOld = categoryService.getById(category.getId());
        category.setCreated_at(dateOld.getCreated_at());
        categoryService.update(category);
        model.addAttribute("page", "category/index");
        return "redirect:/admin/category";
    }

    @GetMapping("delete-category/{id}")
    public String deleteCategory(Model model , @PathVariable int id){
        categoryService.delete(categoryService.getById(id));
        return "redirect:/admin/category";
    }



}
