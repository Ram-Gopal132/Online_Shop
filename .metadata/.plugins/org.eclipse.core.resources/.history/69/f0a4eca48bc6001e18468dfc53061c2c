
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String email=session.getAttribute("email").toString();
String mobileNumber=request.getParameter("mobilenumber");
String password=request.getParameter("password");
int check=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'and password='"+password+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set mobileNumber='"+mobileNumber+"'where email='"+email+"'");
		response.sendRedirect("ChangeMobileNumber.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("ChangeMobileNumber.jsp?msg=wrong");

	}
}
catch(Exception e)
{
	System.out.println(e.getMessage());
}
%>