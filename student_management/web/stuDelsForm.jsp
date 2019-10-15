<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ass.datebase.StudentDb" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ass.hole.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>批量删除</title>
    <style type="text/css">
        .page-bg {
            width: 100%;
            height: 100%;
            background:url('gratisography-41-thumbnail-small.png') no-repeat;
            background-size: 100% 100%;
        }
    </style>
</head>
<body>
<div class="fa div">
    <div class="page-bg">
        <div align="center">
<h1 align="center">批量信息删除</h1>
<form action="stuDels.jsp">
<table border="1" cellspacing="0">
    <tr style="text-align: center">
        <td><font color="#f5f5f5">学号</font></td>
        <td><font color="#f5f5f5">姓名</font></td>
        <td><font color="#f5f5f5">性别</font></td>
        <td><font color="#f5f5f5">年龄</font></td>
        <td><font color="#f5f5f5">电话</font></td>
        <td><font color="#f5f5f5">邮箱</font></td>
        <td><font color="#f5f5f5">专业</font></td>
        <td><font color="#f5f5f5">班级</font></td>
        <td><font color="#f5f5f5">家乡</font></td>
        <td ><font color="#f5f5f5">删除操作</font></td>
    </tr>
<%
    StudentDb sdb = new StudentDb();
    String name = request.getParameter("name");
    String sql = null;
    if (name == null) {
        sql = "select * from student";
    } else {
        sql = "select * from student where name like '%" + name + "%'";
    }
    List<Student> lst = sdb.getStudent(sql);
    request.setAttribute("stuLst", lst);
%>
    <c:forEach items="${stuLst}" var="stu">
    <tr id="${stu.num}">
        <td>${stu.num}</td>
        <td>${stu.name}</td>
        <td>${stu.gender}</td>
        <td>${stu.age}</td>
        <td>${stu.phone}</td>
        <td>${stu.mail}</td>
        <td>${stu.major}</td>
        <td>${stu.classnumber}</td>
        <td>${stu.hometown}</td>
        <td><input type="checkbox" name="checkbox" value="${stu.num}" onclick=""/></td>
    </tr>
    </c:forEach>
</table>
    <p></p>
    <input type="submit" value="提交" name="delete">
</form>
            <a align="center" href="student.jsp">返回信息页</a>
</div>
        </div>
    </div>
</body>
</html>