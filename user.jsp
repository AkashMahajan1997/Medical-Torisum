<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Registration Form</title>
<style>
[type="date"] {
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
}
[type="date"]::-webkit-inner-spin-button {
  display: none;
}
[type="date"]::-webkit-calendar-picker-indicator {
  opacity: 0;
}

/* custom styles */
body {
  padding: 4em;
  background: #e5e5e5;
  font: 13px/1.4 Geneva, 'Lucida Sans', 'Lucida Grande', 'Lucida Sans Unicode', Verdana, sans-serif;
}
label {
  display: block;
}
input {
  border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
  width: 190px;
  \.floating-form {
  width:320px;
}

/****  floating-Lable style start ****/
.floating-label { 
  position:relative; 
  margin-bottom:20px; 
}
.floating-input , .floating-select {
  font-size:14px;
  padding:4px 4px;
  display:block;
  width:100%;
  height:30px;
  background-color: transparent;
  border:none;
  border-bottom:1px solid #757575;
}

.floating-input:focus , .floating-select:focus {
     outline:none;
     border-bottom:2px solid #5264AE; 
}

label {
  color:#999; 
  font-size:14px;
  font-weight:normal;
  position:absolute;
  pointer-events:none;
  left:5px;
  top:5px;
  transition:0.2s ease all; 
  -moz-transition:0.2s ease all; 
  -webkit-transition:0.2s ease all;
}

.floating-input:focus ~ label, .floating-input:not(:placeholder-shown) ~ label {
  top:-18px;
  font-size:14px;
  color:#5264AE;
}

.floating-select:focus ~ label , .floating-select:not([value=""]):valid ~ label {
  top:-18px;
  font-size:14px;
  color:#5264AE;
}

/* active state */
.floating-input:focus ~ .bar:before, .floating-input:focus ~ .bar:after, .floating-select:focus ~ .bar:before, .floating-select:focus ~ .bar:after {
  width:50%;
}

*, *:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.floating-textarea {
   min-height: 30px;
   max-height: 260px; 
   overflow:hidden;
  overflow-x: hidden; 
}

/* highlighter */
.highlight {
  position:absolute;
  height:50%; 
  width:100%; 
  top:15%; 
  left:0;
  pointer-events:none;
  opacity:0.5;
}

/* active state */
.floating-input:focus ~ .highlight , .floating-select:focus ~ .highlight {
  -webkit-animation:inputHighlighter 0.3s ease;
  -moz-animation:inputHighlighter 0.3s ease;
  animation:inputHighlighter 0.3s ease;
}

/* animation */
@-webkit-keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}
@-moz-keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}
@keyframes inputHighlighter {
	from { background:#5264AE; }
  to 	{ width:0; background:transparent; }
}



.floating-credit { position:fixed; bottom:10px;right:10px; color:#aaa; font-size:13px;font-family:arial,sans-serif; }
.floating-credit a { text-decoration:none; color:#000000; font-weight:bold; }
.floating-credit a:hover { border-bottom:1px dotted #f8f8f8; }
.floating-heading { position:fixed; color:#aaa; font-size:20px; font-family:arial,sans-serif; }

  
}
</style>
<link rel="stylesheet" type="text/css" href="Styleuser.css">
</head>
<body>
	<div class="login-box">

		<h1>Patient details</h1>
		<form class="form-set" action="" method="post">
			<p>Disease</p>
			<input type="text" name="disease" placeholder="Enter Disease"
				required>
			<p>Prescription</p>
			<input type="text" name="pres" placeholder="Enter Prescription"
				required>
			<p>Enter Date</p>
			<input type="date" name="date" id="date">
				
				<p>Time</p>
				   <div class="floating-label">     
 				   	  <input class="floating-input" type="text" onclick="(this.type='time')" placeholder="Enter Time">
					  <span class="highlight"></span>
				   </div>	
				<br>
				<br>
					
					
		<input type="submit" name="submit" value="Submit">
		
		</form>



	</div>

</body>
</html>
