package com.example.wangguangwang.dao;

import com.example.wangguangwang.data.UserEntity;

public interface UserDAO {

    public UserEntity select(String username, String password);

    public UserEntity add(String username, String password, String name);
}
