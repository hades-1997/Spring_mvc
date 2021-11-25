package com.ray.books.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "book")
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "title")
    private String title;
    @Column(name = "hometext")
    private String hometext;
    @Column(name = "unitprice")
    private Double unitprice;
    @Column(name = "author")
    private String author;


//    @JsonDeserialize(using = LocalDateDeserializer.class)
//    @JsonSerialize(using = LocalDateSerializer.class)
//@Temporal(TemporalType.DATE)
//    @CreationTimestamp
    @Column(name = "createdate")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdate;

    @Column(name = "imageurl")
    private String imageurl;


    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "cat_id")
    public Category categoryBook;
    //public List<Category> categoryBook;


    // dùng transient mình dùng thôi không lưu lên database
    @Transient
    public String CategoryId;

//    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    @JoinColumn(name = "cat_id")
//    //khai báo name bằng khóa ngoại
//    //
//    private Order categoryBook;
//
//
//    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    @JoinColumn(name = "cat_id")
//    //khai báo name bằng khóa ngoại
//    //
//    private Product categoryBook;


    public Book() { }

    public Book(String title, String hometext, Double unitprice, String author, Date createdate, String imageurl, Category categoryBook, String categoryId) {
        this.title = title;
        this.hometext = hometext;
        this.unitprice = unitprice;
        this.author = author;
        this.createdate = createdate;
        this.imageurl = imageurl;
        this.categoryBook = categoryBook;
        CategoryId = categoryId;
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

//    public Date getCreatedate() {
//        return createdate;
//    }
//
//    public void setCreatedate(Date createdate) {
//        this.createdate = createdate;
//    }

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
                '}';
    }
}
