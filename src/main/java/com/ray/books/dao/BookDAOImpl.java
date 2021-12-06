package com.ray.books.dao;

import com.ray.books.constant.SortBookColumn;
import com.ray.books.entity.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.text.SimpleDateFormat;
import java.util.List;

@Repository
public class BookDAOImpl implements BookDAO{

    private SessionFactory sessionFactory;

    @Autowired
    public BookDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Book> getBooks(int theSortField) {
        // get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        String sortField = null;

        switch (theSortField) {
            case SortBookColumn.NAME_TITLE :
                sortField = "title";
                break;
            case SortBookColumn.HOME_TEXT:
                sortField = "hometext";
                break;
            case SortBookColumn.UNIT_PRICE:
                sortField = "unitprice";
                break;
            default:
                sortField = "createdate";
        }

        Query<Book> theQuery = currentSession.createQuery("from Book order by " + sortField, Book.class);

        List<Book> books = theQuery.getResultList();


        return  books;
    }

    @Override
    public void saveBooks(Book theBooks) {
        Session currentSession = sessionFactory.getCurrentSession();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        currentSession.saveOrUpdate(theBooks);
    }

    @Override
    public Book getBook(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Book theBooks = currentSession.get(Book.class, theId);

        return theBooks;
    }

    @Override
    public void deleteBooks(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Query theQuery = currentSession.createQuery("delete from Book where id=:booksId");
        theQuery.setParameter("booksId", theId);
        theQuery.executeUpdate();
    }

    @Override
    public List<Book> searchBooks(String theSearchName) {
        Session currentSession = sessionFactory.getCurrentSession();
        Query theQuery = null;

        if (theSearchName != null & theSearchName.trim().length() > 0) {
            theQuery = currentSession.createQuery("from Book where lower(title) like :theName " +
                    "or lower(title) like :theName", Book.class);

            theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");
        } else {
            theQuery = currentSession.createQuery("from Customer", Book.class);
        }

        List<Book> books = theQuery.getResultList();

        return books;
    }
}
