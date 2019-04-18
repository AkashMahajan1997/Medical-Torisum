<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Registration Form</title>
<link rel="stylesheet" type="text/css" href="Styleuser.css">
</head>
<body>
	<div class="login-box">

		<h1>Admin Registration</h1>
		<form class="form-set" action="/Medical_Tourism1/saveUser" method="post">
			<p>First Name</p>
			<input type="text" name="firstname" placeholder="Enter Firstname"
				required>
			<p>Last Name</p>
			<input type="text" name="lastname" placeholder="Enter Lastname"
				required>
			<p>Age</p>
			<input type="text" name="age" placeholder="Enter Age" required>
			<p>Email</p>
			<input type="text" name="email" placeholder="Enter Email"
				required>
			<p>Set Password</p>
			<input type="password" name="password" placeholder="Set Password"
				required>
			<p>Gender</p>
			<div class="Gender">
				<div class="select">
					<select name="gender" id="gl">
						<option value="1" selected="selected">Male</option>
						<option value="2">Female</option>
						<option value="3">Others</option>
					</select>
				</div>
			</div>


			<p>Contact</p>
			<input type="text" name="contact" placeholder="Enter Contact Number"
				required>
			<p>Address</p>
			<input type="text" name="address" placeholder="Enter Address"
				required>
			<p>City
			<p>
				<input type="text" name="city" placeholder="Enter city" required>
			<p>ZipCode
			<p>
				<input type="text" name="zip" placeholder="Enter ZipCode" required>

				<input type="submit" name="submit" value="Sign Up">
		</form>



	</div>

</body>
</html>
