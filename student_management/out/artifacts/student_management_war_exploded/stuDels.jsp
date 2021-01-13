
<%@ page import="admin.ass.datebase.UserDb" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>？</title>
</head>
<body>
<%
    String s[] = request.getParameterValues("checkbox");
    String  userIdAll  =  "";
    UserDb Udb=new UserDb();
    if  (s!=null)
    {
        for(int i=0;i<s.length;i++)
        {
            userIdAll = userIdAll + s[i] + ","  ;
        }
        userIdAll  =  userIdAll.substring(0, userIdAll.length()-1);
        String  sql  =  "delete from student  where num in("  +  userIdAll+  ")";
        if (Udb.userUpdate(sql)){
            out.println(userIdAll+"号学生已成功删除");
    %>
        <p></p>
    <a href="student.jsp">返回信息页面</a>
    <%
        }else {
            out.println(userIdAll+"号学生删除失败");
        %>
        <p></p>
        <a href="stuDelsForm.jsp">重来</a>
<%
        }

    }
%>
</body>
</html>
