package com.ray.books.service;

import com.ray.books.dao.CategoryDAO;
import com.ray.books.entity.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService{
    private CategoryDAO categories;

    @Autowired
    public CategoryServiceImpl(CategoryDAO categories) {
        this.categories = categories;
    }

    @Override
    @Transactional
    public List<Category> getCategories(int theSortField) {
        return categories.getCategories(theSortField);
    }

    @Override
    @Transactional
    public List<Category> getCategory() {
        return categories.getCategory();
    }

    @Override
    @Transactional
    public Category getCategoryById(int theId) {
        return categories.getCategoryById(theId);
    }
}
