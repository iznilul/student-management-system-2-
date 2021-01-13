
<%@ page import="admin.ass.datebase.UserDb"%>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String username =request.getParameter("name").trim();
        String password = request.getParameter("password").trim();
        Statement st = null;
        ResultSet rs = null;
        Connection conn=null;
        try{
            conn =UserDb.getConn();
            st = conn.createStatement();
            rs=st.executeQuery("select * from login where username='"+username+"'");
            if(rs.next()){
                rs=st.executeQuery("select * from login where username='"+username+"' and password='"+password+"'");
                if(rs.next()){
        %>
    <script type="text/javascript" language="javascript">
        alert("登陆成功！");
    </script>
    <%
                    response.sendRedirect("student.jsp");
                }else{
                    out.print("密码输入错误！！！<br>"+"<a href=\"index.jsp\">重新登录</a>");
                }
            }else{
                out.print("<font color=red>"+username+"</font>用户不存在！！！<br>"+"请点击<a href=\"userRegister.jsp\">注册</a>");
            }
        }catch(Exception e){
            out.print(e);
        }finally{
            if(rs!=null)
                rs.close();
            if(st!=null)
                st.close();
            if(conn!=null)
                conn.close();
        }
    %>
</body>
</html>
