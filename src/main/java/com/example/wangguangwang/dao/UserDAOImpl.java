package com.example.wangguangwang.dao;

import com.example.wangguangwang.data.UserEntity;
import com.example.wangguangwang.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {
    public UserEntity select(String username, String password){
        UserEntity user = null;

        String sql = "SELECT * FROM user WHERE user_name=? and password=?";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            con = JDBCUtils.getConnection();
            pst = con.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();// 无参数
            if (rs.next()) { // 如果可以next,代表查找到了这个用户的信息，就将结果集中的信息封装到User对象中.
                user = new UserEntity();
                user.setUserName(username);
                user.setName(rs.getString(4));
                user.setStatus(rs.getString(5));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            JDBCUtils.close(rs, pst, con);
        }
        return user;
    }

    @Override
    public UserEntity add(String username, String password, String name) {

        System.out.println(username);
        System.out.println(password);
        System.out.println(name);


        UserEntity user = null;

        String sql = "INSERT INTO user()VALUES(null, ?, ?, ?, ?)";
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try{
            con = JDBCUtils.getConnection();
            pst = con.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, name);
            pst.setString(4, "0");
            if(pst.executeUpdate() < 0){
                System.out.println("注册失败");
                throw new Exception("注册失败！！！");
            }

        }
        catch (SQLException e){
            e.printStackTrace();
        }
        catch (Exception e){
            return null;
        }finally {
            JDBCUtils.close(rs, pst, con);
        }

        user = new UserEntity();
        user.setUserName(username);
        user.setName(name);
        user.setStatus("0");

        return user;
    }
}
