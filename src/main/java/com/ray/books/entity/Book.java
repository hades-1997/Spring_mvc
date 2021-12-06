package com.ray.books.entity;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Size(min = 1, message = "is required")
    @Column(name = "title")
    private String title;

    @Column(name = "hometext")
    private String hometext;

    @Column(name = "unitprice")
    private Double unitprice;

    @Column(name = "author")
    private String author;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;

    @Column(name = "imageurl")
    private String imageurl;


    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "cat_id")
    public Category categoryBook;
    // dùng transient mình dùng thôi không lưu lên database
    @Transient
    public String CategoryId;

    @Transient
    public  CommonsMultipartFile fileDatas;

    public CommonsMultipartFile getFileDatas() {
        return fileDatas;
    }

    public void setFileDatas(CommonsMultipartFile fileDatas) {
        this.fileDatas = fileDatas;
    }



    public Book() { }

    public Book(String title, String hometext, Double unitprice, String author, Date createdate, String imageurl, Category categoryBook, String categoryId, CommonsMultipartFile fileDatas) {
        this.title = title;
        this.hometext = hometext;
        this.unitprice = unitprice;
        this.author = author;
        this.createdate = createdate;
        this.imageurl = imageurl;
        this.categoryBook = categoryBook;
        CategoryId = categoryId;
        this.fileDatas = fileDatas;
    }

    @Transient
    public String getCategoryId() {
        return CategoryId;
    }

    @Transient
    public void setCategoryId(String categoryId) {
        CategoryId = categoryId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getHometext() {
        return hometext;
    }

    public void setHometext(String hometext) {
        this.hometext = hometext;
    }

    public Double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(Double unitprice) {
        this.unitprice = unitprice;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl;
    }


    public Category getCategoryBook() {
        return categoryBook;
    }

    public void setCategoryBook(Category categoryBook) {
        this.categoryBook = categoryBook;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", hometext='" + hometext + '\'' +
                ", unitprice=" + unitprice +
                ", author='" + author + '\'' +
                ", createdate=" + createdate +
                ", imageurl='" + imageurl + '\'' +
                ", categoryBook=" + categoryBook +
                ", CategoryId='" + CategoryId + '\'' +
                ", fileDatas=" + fileDatas +
                '}';
    }
}
