<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
int price=0;
int total=0;
int quantity=0;
int final_total=0;

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where email='"+email+"' and product_id='"+id+"' and address is NULL");
	while(rs.next())
	{
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
	}
	if(quantity==1 && incdec.equals("dec"))
		response.sendRedirect("Mycart.jsp?msg=notPossible");
	
	
	else if(quantity !=1 && incdec.equals("dec"))
	{
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update cart set total='"+total+"',Quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL");
		response.sendRedirect("Mycart.jsp?msg=dec");
				
	}
	else{
		
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update cart set total='"+total+"',Quantity='"+quantity+"' where email='"+email+"' and product_id='"+id+"' and address is NULL");
		response.sendRedirect("Mycart.jsp?msg=inc");
				
	}
}
 catch(Exception e)
{
	 System.out.print(e.getMessage());
}

%>

</body>
</html>