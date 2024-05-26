package com.bkap.controllers.admin;

import com.bkap.entities.Brand;
import com.bkap.services.BrandService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/brand")
public class BrandController {
    private final BrandService brandService;

    @GetMapping("")
    public String index(Model model) {
        model.addAttribute("brands" ,brandService.getAll());
        model.addAttribute("page", "brand/index");
        return "admin";
    }

    @GetMapping("add-brand")
    public String add(Model model) {
        model.addAttribute("brand", new Brand());
        model.addAttribute("page", "brand/add");
        return "admin";
    }

    @PostMapping("save")
    public String save(@ModelAttribute Brand brand, Model model , HttpServletRequest req , @RequestParam("file") MultipartFile file) {
        if(file != null && !file.isEmpty()) {
            String uploadRootPath = req.getServletContext().getRealPath("resources/images");
            File f = new File(uploadRootPath);
            File destination = new File(f.getAbsolutePath()+"/"+file.getOriginalFilename());
            System.out.println(destination);
            try {
                file.transferTo(destination);
            } catch (Exception e) {
                model.addAttribute("error", e.getMessage());
                model.addAttribute("brand", brand);
                model.addAttribute("page" , "brand/add");
            }
            brand.setImage(file.getOriginalFilename());
            brandService.save(brand);
        }
        return "redirect:/admin/brand";
    }

    @GetMapping("edit-brand/{id}")
    public String edit(Model model , @PathVariable int id){
        model.addAttribute("brand" , brandService.getById(id));
        model.addAttribute("page" , "brand/edit");
        return "admin";
    }

    @PostMapping("update")
    public String update(@ModelAttribute Brand brand, Model model , HttpServletRequest req , @RequestParam("file") MultipartFile file){
        if(file != null && !file.isEmpty()) {
            // nếu tải tệp mới
            String UploadRootPath = req.getServletContext().getRealPath("images");
            String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();

            try {
                //Lưu ảnh tệp mới
                File destination = new File(imageUploadPath);
                file.transferTo(destination);
                //Cập nhật đường dẫn ảnh mới vào category
                brand.setImage(file.getOriginalFilename());
            } catch (Exception e) {
                model.addAttribute("error",e.getMessage());
                model.addAttribute("brand", brand);
                model.addAttribute("page", "product/edit");
                return "admin";
            }

        }else {
            var brandOld = brandService.getById(brand.getId());
            brand.setImage(brandOld.getImage());
        }
        var dateOld = brandService.getById(brand.getId());
        brand.setCreated_at(dateOld.getCreated_at());
        brandService.update(brand);

        return "redirect:/admin/brand";
    }

    @GetMapping("delete/{id}")
    public String delete(Model model , @PathVariable int id){
        brandService.delete(brandService.getById(id));
        return "redirect:/admin/brand";
    }
}
