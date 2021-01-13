package admin.ass.datebase;
import admin.ass.hole.Student;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class StudentDb {
    private static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("驱动类加载失败。");
        }
        String url = "jdbc:mysql://127.0.0.1:3307/student?useUnicode=true&serverTimezone=UTC";
        String user = "root";
        String pw = "123";
        Connection conn=null;
        try {
                conn = DriverManager.getConnection(url, user,pw);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("连接失败。");
        }
        return conn;
    }
    public List<Student> getStudent(String sql) throws SQLException {
        List<Student> list = new ArrayList<Student>();
        Connection conn = getConn();
        try {
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Student stu = new Student();
                stu.setNum(rs.getInt("Num"));
                stu.setName(rs.getString("Name"));
                stu.setAge(rs.getString("Age"));
                stu.setGender(rs.getString("Gender"));
                stu.setMail(rs.getString("Mail"));
                stu.setPhone(rs.getString("Phone"));
                stu.setMajor(rs.getString("Major"));
                stu.setClassnumber(rs.getString("Classnumber"));
                stu.setHometown(rs.getString("Hometown"));
                list.add(stu);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }
    public boolean studentUpdate(String sql) throws SQLException {
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
    public static void main(String args[]){
        getConn();
    }
}

