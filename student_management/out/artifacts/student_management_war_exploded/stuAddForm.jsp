<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
    <style type="text/css">
        .page-bg {
            width: 100%;
            height: 100%;
            background:url('gratisography-158-thumbnail-small.jpg') no-repeat;
            background-size: 100% 100%;
        }
    </style>
</head>

<body>
<%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
<div class="fa div">
    <div class="page-bg">
        <div align="center">
<form action="stuAdd.jsp">
    <table>
        <tr>
            <td>学号：</td>
            <td><input id="num" name="num" placeholder="请输入学号"></td>
        </tr>
        <tr>
            <td>姓名：</td>
            <td><input id="name" name="name" placeholder="请输入姓名"></td>
        </tr>
        <tr>
            <td>性别：</td>
            <td><input id="gender" name="gender" placeholder="请输入性别"></td>
        </tr>
        <tr>
            <td>年龄：</td>
            <td><input id="age" name="age" placeholder="请输入年龄"></td>
        </tr>
        <tr>
            <td>电话：</td>
            <td><input id="phone" name="phone" placeholder="请输入学生的电话"></td>
        </tr>
        <tr>
            <td>邮箱：</td>
            <td><input id="mail" name="mail" placeholder="请输入学生的邮箱"></td>
        </tr>
        <tr>
            <td>专业：</td>
            <td><input id="major" name="major" placeholder="请输入学生所在专业"></td>
        </tr>
        <tr>
            <td>班级：</td>
            <td><input id="classnumber" name="classnumber" placeholder="请输入学生所在班级"></td>
        </tr>
        <tr>
            <td>家乡：</td>
            <td><input id="hometown" name="hometown" placeholder="请输入学生的家乡"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="增加">
            </td>
        </tr>
    </table>
    <b>记住，学生的学号独一无二，是不能和之前重复滴(￣▽￣)",不然会报错的{{{(>_<)}}}</b>
</form>
            <a align="center" href="student.jsp">返回信息页</a>
</div>
    </div>
</div>
</body>
</html>
