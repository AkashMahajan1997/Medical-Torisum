<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@CHARSET "ISO-8859-1";
html{
size:landscape;
background: url(https://images.pexels.com/photos/1919236/pexels-photo-1919236.jpeg?cs=srgb&dl=adult-career-clipboard-1919236.jpg&fm=jpg?dl&fit=crop&crop=entropy&w=1366&h=688)  ;
}
h1{
color:#000;
}
h4{

size:auto;
padding: 10px;
width:53px;
height: 1px;
}
ul {
  list-style-type: none;
  margin-bottom:50px;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: -webkit-sticky; /* Safari */
  position: sticky;
  
}

li {
    position: -webkit-sticky; /* Safari */
  position: sticky;
    color: white;
  float: left;
  
 
}

li:last-child {
  border-right: none;
  position: -webkit-sticky; /* Safari */
  position: sticky;
}

li a {
    border: #333;
    border-right: #333;
    border-left: #333;
  font-family: sans-serif;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  position: -webkit-sticky; /* Safari */
  position: sticky;
}

li a:hover:not(.active) {
    border-right: #333;
    border-left: #333;
          background-color: rgb(207, 100, 51);
        

  position: -webkit-sticky; /* Safari */
  position: sticky;
}

.active {
  background-color: rgb(207, 100, 51);
  
}
h3{
       
  opacity: 0.5;
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: underline
}

table{
  font-family: Calibri; 
  color:white; 
  font-size: 11pt; 
  font-style: normal;
  font-weight: bold;
  text-align:; 
  background-color: #339966; 
  border-collapse: collapse; 
  border: 2px solid navy
  
}
table.inner{
  border: 5px

}
</style>



<!-- <link rel="stylesheet" href="style.css"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  background: url(52897856-long-hospital-hallway-background-unfocused-.jpg);
  background-size: 100%;
  background-height: 100%;
}
</style>
<body>
<ul>
               
                    <li style="float:right"><a class="active"href="http://localhost:8085/MedicalTourism/index.jsp">Log Out</a></li>
                                      
                </ul>
                
<br><br><h1 align=center>Enter booking details...</h1>

<span>${appointmentStatus}</span>
<form action="AppointmentConfirmationServlet" method="post" align="center">
<table align="center" cellpadding = "10">
<tr>
<td>Preferred Day:</td>
<td>
<input list="preferredDay">
<datalist id="preferredDay">
   <option value="Monday">Monday
   <option value="Tuesday">Tuesday
   <option value="Wednesday">Wednesday
   <option value="Thursday">Thursday
   <option value="Friday">Friday
   <option value="Saturday">Saturday
</datalist>
</td>
</tr>

<br>

<!-- Preferred Time Slot -->
<tr>
<td>Preferred Time Slot:</td>
<td><select name="TimeSlot"/>



  
   <option value="3:00 PM">3:00 PM</option>
   <option value="4:00 PM">4:00 PM</option>
   <option value="5:00 PM">5:00 PM</option>

</select><br>
</td>
</tr>
<!-- Submit -->
<tr>
<td colspan="2" align="center">
<input type="submit" name="submit" value="submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>

</form>

</body>
</html>
