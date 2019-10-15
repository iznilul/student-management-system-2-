
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新用户注册页面</title>
</head>
<style type="text/css">
    .page-bg {
        width: 100%;
        height: 100%;
        background:url('gratisography-small-waterfall-summer-thumbnail-small.jpg') no-repeat;
        background-size: 100% 100%;
    }
</style>
<body>
<div class="fa div">
<div class="page-bg">
    <div align="center">
<h2>新用户注册</h2>
<form action="registeredSucceed.jsp" method="post">
    <table align="center">
        <tr align="right">
            <td><font color="#f5f5f5">请输入用户名:</font></td>
            <td><input type="text" name=name autofocus="autofocus"></td>
        </tr>
        <tr align="right">
            <td><font color="#f5f5f5">请输入密码:</font></td>
            <td><input type="password" name=password></td>
        </tr>
        <tr align="right">
            <td><font color="#f5f5f5">请输入确认密码:</font></td>
            <td><input type="password" name=confirm></td>
        </tr>
    </table>
    <input type="submit" name=register value="注册" >
    <input type="reset" name=refill value="重填" >
</form>
        <a align="center" href="index.jsp"><font color="#f5f5f5">返回首页</font></a>
    </div>
</div>
</div>
</body>
</html>
