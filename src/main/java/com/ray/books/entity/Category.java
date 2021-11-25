package com.ray.books.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cat_id;

    @Column(name="title")
    private String title;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "categoryBook", cascade = {CascadeType.ALL})
    private List<Book> books;


//    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    @JoinColumn(name = "cat_id")
//    //khai báo name bằng khóa ngoại
//    //
//    private Category categoryBook;
    public Category() {}

    public Category(int cat_id, String title) {
        this.cat_id = cat_id;
        this.title = title;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Category{" +
                "cat_id=" + cat_id +
                ", title='" + title + '\'' +
                '}';
    }
}
