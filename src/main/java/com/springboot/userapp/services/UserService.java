package com.springboot.userapp.services;

import com.springboot.userapp.domain.User;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User findById(int theId);

    void save(User user);

    void deleteById(int theId);
}
