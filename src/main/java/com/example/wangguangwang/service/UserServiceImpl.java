package com.example.wangguangwang.service;

import com.example.wangguangwang.dao.UserDAOImpl;
import com.example.wangguangwang.data.UserEntity;

public class UserServiceImpl implements UserService{
    UserDAOImpl userDAO = new UserDAOImpl();

    public UserEntity login(String username, String password){
        return userDAO.select(username, password);
    }

    public UserEntity add(String username, String password, String name){
        return userDAO.add(username, password, name);
    }
}