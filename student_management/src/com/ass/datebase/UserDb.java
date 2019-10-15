package com.ass.datebase;


import java.sql.*;

public class UserDb {
    public static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动类加载失败。");
        }
        String url = "jdbc:mysql://127.0.0.1:3306/spiders?useUnicode=true&serverTimezone=UTC";
        String user = "root";
        String pw = "123";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, pw);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("连接失败。");
        }
        return conn;
    }
    public boolean userUpdate(String sql) throws SQLException {
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            int ut = st.executeUpdate(sql);
            return ut > 0;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        } finally {
            if (conn != null)
                conn.close();
        }
    }
//    public static void main(String args[]){
//        getConn();
//    }
}

