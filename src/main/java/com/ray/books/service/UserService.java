package com.ray.books.service;

import com.ray.books.entity.RegisteredUser;
import com.ray.books.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    User findByUserName(String userName);
    void save(RegisteredUser registeredUser);
}
