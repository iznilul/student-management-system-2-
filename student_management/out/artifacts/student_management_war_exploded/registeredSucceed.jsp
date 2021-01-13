<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="admin.ass.datebase.UserDb"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>判断登录</title>
</head>
<body>
    <%
		Statement st =null;
		ResultSet rs = null;
		Connection conn = null;
		String username=request.getParameter("name").trim();
		String password=request.getParameter("password").trim();
		String confirm=request.getParameter("confirm").trim();
		try{
		conn = UserDb.getConn();
		st = conn.createStatement();
		if(username.length()!=0 ){
			rs=st.executeQuery("select * from login where username='"+username+"'");
			if(rs.next()){
				out.print("用户已经存在  "+"请<a href=\"userRegister.jsp\">重新注册</a>");
			}else{
				if(password.equals(confirm)){
	 				st.executeUpdate("insert into login values('"+username+"','"+ password + "');");
				%>
                    <script type="text/javascript" language="javascript">
                        alert("注册成功！正在登陆...请稍等o(￣▽￣)ｄ");
                    </script>
                    <meta http-equiv="refresh" content="1;URL=student.jsp">
    <%
				}else{
				out.print("密码输入不一致!!!<br>"+"<a href=\"userRegister.jsp\">重新注册</a>");
				}
			}
			}else {
				out.print("姓名不能为空");
				out.print("请<a href=\"userRegister.jsp\">重新注册</a>");
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
</html>
