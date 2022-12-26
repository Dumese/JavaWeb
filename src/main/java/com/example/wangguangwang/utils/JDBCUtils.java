package com.example.wangguangwang.utils;

import java.sql.*;

public class JDBCUtils {
    private static final String driver="com.mysql.cj.jdbc.Driver";

    private static final String URL="jdbc:mysql://localhost:3306/wangguangwang_db";

    private static final String userName = "admin";

    private static final String password = "123456";

    static Connection connection = null;

    static {
        try{
            //注册驱动
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("----------驱动程序配置未配置成功----------");
        }
        System.out.println("==========驱动程序配置配置成功==========");
    }

    //连接数据库
    public static Connection getConnection(){
        try{
            connection = DriverManager.getConnection(URL, userName, password);
        }catch (SQLException e){
            e.printStackTrace();
            System.out.println("----------数据库连接失败----------");
        }
        System.out.println("==========数据库连接成功==========");
        return connection;
    }

    //关闭连接
    public static void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection){
        if (resultSet != null){
            try{
                resultSet.close();
                preparedStatement.close();
                connection.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }


    }
}
