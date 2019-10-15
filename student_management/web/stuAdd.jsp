<%@ page import="com.ass.datebase.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
</head>
<body>
<%
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //获取表单中各个输入框中的值
    String num =request.getParameter("num");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String phone = request.getParameter("phone");
    String mail = request.getParameter("mail");
    String major = request.getParameter("major");
    String classnumber = request.getParameter("classnumber");
    String hometown = request.getParameter("hometown");

    //组装SQL语句
    String sql = "insert into student(num,name,gender,age,phone,mail,major,classnumber,hometown) values("+num+",'"+name+"',"+gender+",'"+age+"','"+phone+"','"+mail+"','"+major+"','"+classnumber+"','"+hometown+"')";
    //调用函数执行SQL语句

    if (sdb.studentUpdate(sql)){
        response.sendRedirect("student.jsp");
    }else {
        request.getRequestDispatcher("student.jsp").forward(request,response);
    }
%>
</body>
</html>
