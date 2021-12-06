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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/books")
@MultipartConfig(
        fileSizeThreshold = 1024*1024*1,    // 1MB
        maxFileSize = 1024 * 1024 * 10,     // 10MB
        maxRequestSize = 1024 * 1024 * 100 // 100MB
)
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
    public String saveBooks(@ModelAttribute("books") Book theBooks,
                            @RequestParam("fileDatas") MultipartFile multipartFile,
                            HttpServletRequest request) {

        //String nameFile = multipartFile.getOriginalFilename();
        String uploadRootPath =  request.getServletContext().getRealPath("upload");
        System.out.println("uploadRootPath=" + uploadRootPath);
        File uploadRootDir = new File(uploadRootPath);
        // Tạo thư mục gốc upload nếu nó không tồn tại.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }
        CommonsMultipartFile fileData = theBooks.getFileDatas();
        //
        List<File> uploadedFiles = new ArrayList<File>();
        // Tên file gốc tại Client.
        String name = fileData.getOriginalFilename();
        System.out.println("Client File Name = " + name);
        if (name != null && name.length() > 0) {
            try {
                // Tạo file tại Server.
                File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + name);

                // Luồng ghi dữ liệu vào file trên Server.
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                stream.write(fileData.getBytes());
                stream.close();
                //
                uploadedFiles.add(serverFile);
                System.out.println("Write file: " + serverFile);
            } catch (Exception e) {
                System.out.println("Error Write file: " + name);
            }
            String fileName = Paths.get(fileData.getOriginalFilename()).getFileName().toString();
            System.out.println(fileName);
            theBooks.setImageurl(fileName);
        }
        int categoryId = Integer.parseInt(theBooks.CategoryId);
        Category category = categoryService.getCategoryById(categoryId);
        theBooks.setCategoryBook(category);
        bookService.saveBooks(theBooks);

        return "redirect:/books/list";
//        for (CommonsMultipartFile fileData : fileDatas) {
//            // Tên file gốc tại Client.
//            String name = fileData.getOriginalFilename();
//            System.out.println("Client File Name = " + name);
//            if (name != null && name.length() > 0) {
//                try {
//                    // Tạo file tại Server.
//                    File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + name);
//
//                    // Luồng ghi dữ liệu vào file trên Server.
//                    BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
//                    stream.write(fileData.getBytes());
//                    stream.close();
//                    //
//                    uploadedFiles.add(serverFile);
//                    System.out.println("Write file: " + serverFile);
//                } catch (Exception e) {
//                    System.out.println("Error Write file: " + name);
//                }
//            }
//            String fileName = Paths.get(fileData.getOriginalFilename()).getFileName().toString();
//            System.out.println(fileName);
//            theBooks.setImageurl(fileName);
//        }
//        int categoryId = Integer.parseInt(theBooks.CategoryId);
//        Category category = categoryService.getCategoryById(categoryId);
//        theBooks.setCategoryBook(category);
//        bookService.saveBooks(theBooks);
//
//        return "redirect:/books/list";

    }
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("booksId") int theId, Model theModel) {
        // get customer from DB
        List<Category> categories = categoryService.getCategory();
        theModel.addAttribute("categories", categories);
        Book theBooks = bookService.getBook(theId);
       // CommonsMultipartFile fileData = theBooks.getImageurl();
      //  theBooks.setFileDatas(fileDatas);
        // bind data to theModel
        theModel.addAttribute("books", theBooks);
        return "books-form";
    }

    @GetMapping("/delete")
    public String deleteBooks(@RequestParam("booksId") int theId) {
        bookService.deleteBooks(theId);
        return "redirect:/books/list";
    }


    @GetMapping("search")
    public String searchBooks(@RequestParam("theSearchName") String theSearchName, Model theModel) {
        List<Book> theBooks = bookService.searchBooks(theSearchName);
        theModel.addAttribute("books", theBooks);
        return "list-books";
    }

}
