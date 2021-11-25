package com.ray.books.dao;

import com.ray.books.entity.User;

public interface UserDAO {
    User findByUserName(String username);

    void save(User user);
}
