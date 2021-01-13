<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
</head>
<style type="text/css">
    .page-bg {
        width: 100%;
        height: 100%;
        background:url('gratisography-52-thumbnail-small.png') no-repeat;
        background-size: 100% 100%;
    }
</style>
<body>
<%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%>
<div class="fa div">
    <div class="page-bg">
        <div align="center">
<form action="stuMod.jsp">
    <table>
    <tr>
        <td>学号：</td>
        <td><input id="num" name="num" value="<%=request.getParameter("num")%>"></td>
    </tr>
    <tr>
        <td>姓名：</td>
        <td><input id="name" name="name" value="<%=request.getParameter("name")%>"></td>
    </tr>
    <tr>
        <td>性别：</td>
        <td><input id="gender" name="gender" value="<%=request.getParameter("gender")%>"></td>
    </tr>
    <tr>
        <td>年龄：</td>
        <td><input id="age" name="age" value="<%=request.getParameter("age")%>"></td>
    </tr>
    <tr>
        <td>电话：</td>
        <td><input id="phone" name="phone" value="<%=request.getParameter("phone")%>"></td>
    </tr>
    <tr>
        <td>邮箱：</td>
        <td><input id="mail" name="mail" value="<%=request.getParameter("mail")%>"></td>
    </tr>
    <tr>
        <td>专业：</td>
        <td><input id="major" name="major" value="<%=request.getParameter("major")%>"></td>
    </tr>
    <tr>
        <td>班级：</td>
        <td><input id="classnumber" name="classnumber" value="<%=request.getParameter("classnumber")%>"></td>
    </tr>
    <tr>
        <td>家乡：</td>
        <td><input id="hometown" name="hometown" value="<%=request.getParameter("hometown")%>"></td>
    </tr>
        <tr>
            <td>
                <input type="submit" value="确认修改">
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
