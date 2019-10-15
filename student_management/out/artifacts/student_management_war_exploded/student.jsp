<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ass.datebase.StudentDb" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ass.hole.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息显示页面</title>
    <style>
        td {
            white-space: nowrap;
        }
    </style>
    <style type="text/css">
        .page-bg {
            width: 100%;
            height: 100%;
            background:url('gratisography-waves-crashing-rocks-thumbnail-small.jpg') no-repeat;
            background-size: 100% 100%;
        }
        a{
            font-family: Consolas, serif;font-size: larger}
    </style>
</head>
<body>
<style type="text/css">
    .page-bg {
        width: 100%;
        height: 100%;
        background:url('gratisography-waves-crashing-rocks-thumbnail-small.jpg') no-repeat;
        background-size: 100% 100%;
    }
</style>
<div class="fa div">
<div class="page-bg">
    <div align="center">
    <h1 align="center">学生信息系统平台</h1>
<form action="student.jsp">
    <a>信息查询</a>
    <input id="name" name="name" placeholder="按姓名查询">
    <input type="submit" value="查询">
    <a>什么都不填的话可以查询全部哦(•̀ω•́)y</a>
</form>
<p></p>
<table border="1" cellspacing="0">
    <tr style="text-align: center">
        <td>学号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>电话</td>
        <td>邮箱</td>
        <td>专业</td>
        <td>班级</td>
        <td>家乡</td>
        <%--  colspan属性用于将指定的横向单元格合并  --%>
        <td colspan="2">操作</td>
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
        <td><a href="stuDel.jsp?num=${stu.num}">删除</a></td>
        <td><a href="stuModForm.jsp?num=${stu.num}&name=${stu.name}&gender=${stu.gender}&age=${stu.age}&phone=${stu.phone}&mail=${stu.mail}&major=${stu.major}&classnumber=${stu.classnumber}&hometown=${stu.hometown}">修改</a></td>
    </tr>
</c:forEach>
</table>
<p></p>
        <a href="stuAddForm.jsp">增加学生信息</a>
        <p></p>
<a href="stuDelsForm.jsp">批量删除学生信息</a>
        <p></p>
<a align="center" href="index.jsp">返回首页</a>
</div>
</div>
</div>
</body>
</html>
