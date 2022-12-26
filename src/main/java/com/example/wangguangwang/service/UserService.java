package com.example.wangguangwang.service;

import com.example.wangguangwang.data.UserEntity;

import java.sql.SQLException;

public interface UserService {
    public UserEntity login(String username, String password) throws SQLException;

    public UserEntity add(String username, String password, String name);
}
