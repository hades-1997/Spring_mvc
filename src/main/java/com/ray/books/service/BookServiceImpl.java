package com.ray.books.service;

import com.ray.books.dao.BookDAO;
import com.ray.books.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    private BookDAO bookDAO;

    @Autowired
    public BookServiceImpl(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @Override
    @Transactional
    public List<Book> getBooks(int theSortField) {
        return bookDAO.getBooks(theSortField);
    }

    @Override
    @Transactional
    public void saveBooks(Book theBooks) {
        bookDAO.saveBooks(theBooks);
    }

    @Override
    @Transactional
    public Book getBook(int theId) {
        return bookDAO.getBook(theId);
    }

    @Override
    @Transactional
    public void deleteBooks(int theId) {
        bookDAO.deleteBooks(theId);
    }

    @Override
    @Transactional
    public List<Book> searchBooks(String theSearchName) {
        return null;
    }
}
