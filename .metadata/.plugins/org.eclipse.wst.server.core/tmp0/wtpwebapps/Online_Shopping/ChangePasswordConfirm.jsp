<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%
String email=session.getAttribute("email").toString();
String oldpassword=request.getParameter("oldpass");
String newpass=request.getParameter("newpass");
String cnfpassword=request.getParameter("confirmpass");

if(!cnfpassword.equals(newpass))
{
	response.sendRedirect("changePassword.jsp?msg=notMatch");
}
else{
	int check=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+oldpassword+"'");
		while(rs.next())
		{
			check=1;
			st.executeUpdate("update users set password='"+newpass+"' where email='"+email+"'");
			response.sendRedirect("changePassword.jsp?msg=done");
		}
		
		if(check==0){
			response.sendRedirect("changePassword.jsp?msg=wrong");
		}
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
}
%>