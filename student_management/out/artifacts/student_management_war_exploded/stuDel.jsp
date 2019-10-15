<%@ page import="com.ass.datebase.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除学生信息</title>
</head>
<body>
<%
    String num = request.getParameter("num");
    String sql = "delete from student where num = "+num;
    StudentDb sdb = new StudentDb();
    if (sdb.studentUpdate(sql)){
        out.println(num+"号学生已成功删除");
    }else {
        out.println(num+"号学生删除失败");
    }
%>
<p></p>
<a href="student.jsp">返回</a>
</body>
</html>
