
<%
    if (session.getAttribute("email") == null || session.getAttribute("email")==null) {
        
        response.sendRedirect("error.jsp");
    }
%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %> 
   
            <center><h2>Online shopping</h2></center>
            <h2><a href=""><%out.println(email); %><i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="Mycart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            <a href="MyOrder.jsp">My Orders  <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="Messageus.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
            
            <form action="searchHome.jsp" method="post">
            <input type="text" placeholder="search" name="search">
            <button type="submit"><i class="fa fa-search"></i></button>
            </form>
             
               
                
             
            </div>
          </div>
           <br>
           <!--table-->
