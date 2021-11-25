package com.ray.books.controller;

import com.ray.books.constant.SortBookColumn;
import com.ray.books.entity.Book;
import com.ray.books.entity.Category;
import com.ray.books.service.BookService;
import com.ray.books.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BooksController {
    private BookService bookService;
    private CategoryService categoryService;
    @Autowired
    public BooksController(BookService bookService, CategoryService categoryService) {
        this.bookService = bookService;
        this.categoryService = categoryService;
    }

    @GetMapping("/list")
    public String listBooks(Model theModel, @RequestParam(required = false) String sort) {
        List<Book> theBooks = null;
        if (sort != null) {
            int theSortField = Integer.parseInt(sort);
            theBooks = bookService.getBooks(theSortField);
        } else {
            theBooks = bookService.getBooks(SortBookColumn.CREATE_DATE);
        }
        theModel.addAttribute("books", theBooks);
        return "list-books";
    }
    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model theModel) {
        List<Category> theCategory = categoryService.getCategory();
        theModel.addAttribute("categories", theCategory);
        // create model attribute to bind form data

        Book theBooks = new Book();
        theModel.addAttribute("books", theBooks);

        return "books-form";
    }

    //@RequestParam , @RequestParam("imageurl") CommonsMultipartFile imageFile
    @PostMapping("/saveBooks")
    public String saveBooks(@ModelAttribute("books") Book theBooks) {

        int categoryId = Integer.parseInt(theBooks.CategoryId);
        Category category = categoryService.getCategoryById(categoryId);
        theBooks.setCategoryBook(category);
        bookService.saveBooks(theBooks);

        return "redirect:/books/list";


        //return null;
        // redirect from controller to another URL in controller

    }
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("booksId") int theId, Model theModel) {
        // get customer from DB
//       Category theCategory = categoryService.getCategoryById(theId);
//        theModel.addAttribute("categories", theCategory);
        Book theBooks = bookService.getBook(theId);
        // bind data to theModel
        theModel.addAttribute("books", theBooks);
        return "customer-form";
    }

    @GetMapping("/delete")
    public String deleteBooks(@RequestParam("booksId") int theId) {
        bookService.deleteBooks(theId);
        return "redirect:/books/list";
    }


    @GetMapping("search")
    public String searchBooks(@RequestParam("theSearchName") String theSearchName, Model theModel) {

        return null;
    }

}
