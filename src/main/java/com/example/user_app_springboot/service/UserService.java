package com.example.user_app_springboot.service;


import com.example.user_app_springboot.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();
    void saveUser(User user);
    User getUser(int id);
    void deleteUser(int id);
}
