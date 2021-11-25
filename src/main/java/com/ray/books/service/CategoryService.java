package com.ray.books.service;

import com.ray.books.entity.Category;

import java.util.List;

public interface CategoryService {
    public List<Category> getCategories(int theSortField);
    public List<Category> getCategory();
    public Category getCategoryById(int theId);
}
