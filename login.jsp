<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Login Portal</title>
<link rel="stylesheet" type="text/css" href="Stylelogin.css">
</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab">Sign In</label>

			<div class="login-form">
				<div class="sign-in-htm">
					<form action="validate" method="post">
						<div class="group">
							<label for="user" class="label">UserName</label> 
							<input id="user" name="username" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> 
							<input id="pass" name="password" type="password" class="input">
						</div>

						<div class="group">
							<input type="submit" class="button" value="Sign In">
						</div>
						<div class="hr"></div>
					</form>
				</div>

			</div>
		</div>
	</div>
</body>
</html>