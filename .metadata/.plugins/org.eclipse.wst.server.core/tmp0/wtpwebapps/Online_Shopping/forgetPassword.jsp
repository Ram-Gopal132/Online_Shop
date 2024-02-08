<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  
  <form action="ForgetPasswordConfirm.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required="required">
    <input type="text" name="mobileNumber" placeholder="Enter MobileNumber" required="required" maxlength="10">
    
    <select name="securityQuestion" required="required">
	<option value="What is Your First Car?">What is Your First Car?</option>
	<option value="What is Your Favourite Cricketer?">What is Your Favourite Cricketer? </option>
	<option value="What is your First School Name?">What is your First School Name?</option>
	<option value="What is Your First Bike?">What is Your First Bike?</option>
	</select>
    
        <input type="text" name="answer" placeholder="Enter Answer" required="required">
        <input type="password" name="newpassword" placeholder="Enter New Password" required="required">
        <input type="submit" value="Save">
    
     
  </form>
     
      <h2><a href="index.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  
   <%
   String msg=request.getParameter("msg");
   if("done".equals(msg))
   {
   %>
<h1>Password Changed Successfully!</h1>
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