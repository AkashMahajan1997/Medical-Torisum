<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Hospital Registration Form</title>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<body>
	<div class="login-box">

		<h1>Hospital Registration</h1>
		<form class="form-set" action="/Medical_Tourism1/saveHospital"
			method="post">
			<p>Hospital Name</p>
			<input type="text" name="hospitalName" placeholder="Enter Firstname"
				required>
			<p>Email</p>
			<input type="text" name="email" placeholder="Enter Email"
				required>
			<p>Set Password</p>
			<input type="password" name="password" placeholder="Set Password"
				required>
			<p>Address Line 1</p>
			<input type="text" name="address1" placeholder="Enter Address"
				required>
			<p>Address Line 2</p>
			<input type="text" name="address2" placeholder="Enter Address">
			<p>City
			<p>
				<input type="text" name="city" placeholder="Enter city" required>
			<p>State</p>
			<input type="text" name="state" placeholder="Enter state" required>
			<p>ZipCode
			<p>
				<input type="text" name="zip" placeholder="Enter ZipCode" required>
			<p>Certifications</p>
			<div class="categories">
				<div class="select">
					<select name="certifications" id="cl">
						<option value="NABH" selected="selected">NABH</option>
						<option value="NABL">NABL</option>
						<option value="JCI">JCI</option>
						<option value="ISO 9001">ISO 9001</option>
					</select>
				</div>
			</div>

			<input type="submit" name="submit" value="Sign Up">


		</form>



	</div>

</body>
</html>