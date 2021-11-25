package com.ray.books.dao;

import com.ray.books.constant.SortCategoryColumn;
import com.ray.books.entity.Category;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CategoryImpl implements CategoryDAO {
    private SessionFactory sessionFactory;

    @Autowired
    public CategoryImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Category> getCategories(int theSortField) {

        Session currentSession = sessionFactory.getCurrentSession();

        String sortField = null;

        switch (theSortField) {
            case SortCategoryColumn.TITLE:
                sortField = "title";
                break;
        }

        Query<Category> theQuery = currentSession.createQuery("from Category order by " + sortField, Category.class);

        List<Category> categories = theQuery.getResultList();

        return categories;
    }

    @Override
    public List<Category> getCategory() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Category> theQuery = currentSession.createQuery("from Category order by cat_id" , Category.class);
        List<Category> categories = theQuery.getResultList();
        return categories;
    }

    @Override
    public Category getCategoryById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Category category = currentSession.get(Category.class, theId);
        return category;
    }

}
