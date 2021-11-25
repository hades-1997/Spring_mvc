package com.ray.books.dao;

import com.ray.books.entity.Role;

public interface RoleDAO {
    public Role findRoleByName(String theRoleName);
}
