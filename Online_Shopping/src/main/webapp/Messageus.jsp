<%@include file="header.jsp" %>
<%@include file="Footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>


<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>


<form action="messageusconfirm.jsp" method="post">
<input class="input-style" name="title" type="text" placeholder="Title" required="required">
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Message" required="required"></textarea>
<hr>
 <button  class="button" type="Submit">Send<i class='far fa-arrow-alt-circle-right'></i></button>

</form>
<br><br><br>
</body>
</html>