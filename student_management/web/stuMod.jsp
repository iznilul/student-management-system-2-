<%@ page import="admin.ass.datebase.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
</head>
<body>
<%
    //获取表单中的数据
    String num =request.getParameter("num");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String age = request.getParameter("age");
    String phone = request.getParameter("phone");
    String mail = request.getParameter("mail");
    String major = request.getParameter("major");
    String classnumber = request.getParameter("classnumber");
    String hometown = request.getParameter("hometown");
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //组装SQL语句
    String sql = "update student set num="+num+",name='"+name+"',age="+age+",gender='"+gender+"',phone='"+phone+"',mail='"+mail+"',major='"+major+"',classnumber='"+classnumber+"',hometown='"+hometown+"'  where num="+num;

    if (sdb.studentUpdate(sql)){
        response.sendRedirect("student.jsp");
    }else {
        out.println(sql+"更新失败");
        request.getRequestDispatcher("stuModForm.jsp").forward(request,response);
    }
%>
</body>
</html>
