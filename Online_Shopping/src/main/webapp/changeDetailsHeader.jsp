<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
            <center><h2>Change Details<i class="fa fa-edit"></i></h2></center>
             
             <%String email= session.getAttribute("email").toString();%>
             
            <h2><a href="home.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
             <h2><a href="">Your Profile(<%out.println(email); %>) <i class='fas fa-user-alt'></i></a></h2>
            <a href="changePassword.jsp">Change Password <i class='fas fa-key'></i></a>
            <a href="addchangeaddress.jsp">Add or change Address <i class='fas fa-map-marker-alt'></i></a>
            <a href="ChangeSequrityQuestion.jsp">Change Security Question <i class="fa fa-repeat"></i></a>
            <a href="ChangeMobileNumber.jsp">Change Mobile Number <i class='fas fa-phone'></i></a>
          </div>
           <br>
           <!--table-->
