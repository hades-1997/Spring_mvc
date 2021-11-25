package com.ray.books.controller;

import com.ray.books.constant.SortCategoryColumn;
import com.ray.books.entity.Category;
import com.ray.books.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoriesController {
    private CategoryService categoryService;

    @Autowired
    public CategoriesController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    @GetMapping("/list")
    public String listCustomers(Model theModel, @RequestParam(required = false) String sort) {

        List<Category> theCategory = null;

        if (sort != null) {
            int theSortField = Integer.parseInt(sort);
            theCategory = categoryService.getCategories(theSortField);
        } else {
            theCategory = categoryService.getCategories(SortCategoryColumn.TITLE);
        }

        theModel.addAttribute("categories", theCategory);

        return "list-categories";
    }
}
