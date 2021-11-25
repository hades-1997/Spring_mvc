package com.ray.books.dao;


import com.ray.books.entity.Category;

import java.util.List;

public interface CategoryDAO {
    //int theSortField
    public List<Category> getCategories(int theSortField);
    public List<Category> getCategory();
//    public void saveCategories(Category theCategories);
    public Category getCategoryById(int theId);
//
//    public void deleteCategories(int theId);
}
