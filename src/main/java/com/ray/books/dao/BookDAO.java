package com.ray.books.dao;

import com.ray.books.entity.Book;


import java.util.List;

public interface BookDAO {
    public List<Book> getBooks(int theSortField);
    public void saveBooks(Book theBooks);
    public Book getBook(int theId);
    public void deleteBooks(int theId);
    public List<Book> searchBooks(String theSearchName);
}
