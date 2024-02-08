<%@include file="changeDetailsHeader.jsp" %>
<%@include file="Footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action="ChangeSequrityQuestionConfirm.jsp" method="post"> 
<h3>Select Your New Security Question</h3>

  <select class="input-style" name="securityQuestion" required="required" >
	<option value="selected">Select New Security Question?</option>
	<option value="What is Your First Car?">What is Your First Car?</option>
	<option value="What is Your Favourite Cricketer? ">What is Your Favorite Cricketer? </option>
	<option value="What is your First School Name?">What is your First School Name?</option>
	<option value="What is Your First Bike?">What is Your First Bike?</option>
	</select>
  
  
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="answer" placeholder="Enter Your New Answer" required="required">
 
<hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="Enter Password(For Sequrity)" required="required">

<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>