
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newpassword=request.getParameter("newpassword");


int check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from users where email='"+email+"' and mobileNumber='"+mobileNumber+"' and securityQuestion='"+securityQuestion+"' answer='"+answer+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set password='"+newpassword+"' where email='"+email+"'");
		response.sendRedirect("forgetPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgetPassword.jsp?msg=invalid");
	}
}

catch(Exception e)
{
	System.out.println(e.getMessage());
}

%>