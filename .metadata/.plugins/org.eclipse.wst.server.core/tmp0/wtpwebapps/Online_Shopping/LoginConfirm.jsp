<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email)&&"Ram".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		 ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'");
		while(rs.next())
		{
			z=1;
			session.setAttribute("email", email);
			
			response.sendRedirect("home.jsp");
		}
		if(z==0)
			response.sendRedirect("error.jsp");
		}
		catch(Exception e)
		{
			System.out.println(e);
			response.sendRedirect("error.jsp");
		}
	}
%>