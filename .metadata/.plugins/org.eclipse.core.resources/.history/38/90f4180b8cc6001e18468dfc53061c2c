
<%
    if (session.getAttribute("email") == null || session.getAttribute("email")==null) {
        
        response.sendRedirect("../error.jsp");
    }
%>

<%@page import="com.app.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
   
    <br>
    <div class="topnav sticky">
    
  
   	<%String email= request.getParameter("email"); %>
  
            <center><h2>Online shopping</h2></center>
            <a href="adminHome.jsp"><i class="bi bi-house-up-fill"></i> Home</a>
            <a href="addnewProduct.jsp">Add New Product<i class="fa fa-plus-circle"></i></a>
            <a href="AllProductedit.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="MessageReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="OrderReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrder.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="DeliveredOrder.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            
           
            
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            
           
            
          </div>
           <br>
          

</body>
</html>