<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/signup-style.css">

<title>SignUp</title>
</head>
<body>

<div id="container">
<div class="signup">

	<form action="SignUpConfirm.jsp" method="post">
	<input type="text" name="name" placeholder="Enter Name" required="required">
	<input type="email" name="email" placeholder="Enter Email" required="required">
	<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required="required" maxlength="10">
	
	<select name="securityQuestion" required="required">
	<option value="selected">Select Security Question?</option>
	<option value="What is Your First Car?">What is Your First Car?</option>
	<option value="What is Your Favourite Cricketer? ">What is Your Favourate Cricketer? </option>
	<option value="What is your First School Name?">What is your First School Name?</option>
	<option value="What is Your First Bike?">What is Your First Bike?</option>
	</select>
	
	<input type="text" name="answer" placeholder="Enter Answer" required="required">
	<input type="password" name="password" placeholder="Enter Password" required="required" maxlength="12">
	<input type="submit" value="SignUp">
	
	</form>
	<h1><a href="index.html">login</a></h1>


</div>

<div class='whysign'>

<%
	String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>

<%} %>

<%
	if("invalid".equals(msg))
	{
	%>
	<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>


</body>
</html>