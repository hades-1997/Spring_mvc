package com.ray.books.service;

import com.ray.books.entity.Book;

import java.util.List;

public interface BookService {
    public List<Book> getBooks(int theSortField);
    public void saveBooks(Book theBooks);
    public Book getBook(int theId);
    public void deleteBooks(int theId);
    public List<Book> searchBooks(String theSearchName);
}
