<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Medical_Tourism</title>
    </head>
<style>
*{
   margin: 0;
   padding:0;
   font-family: Century Gothic;

}
header{
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(welcomeimage.jpg);
    height: 100vh;
    background-size: cover;
    background-position: center;
}
ul{

    margin-top: 1.5%;
    margin-right: 3%;
    list-style-type:none;
    float: right;
}
ul li{

display: inline-block;
}
ul li a{

  
    
    text-decoration: none;
    color: #fff;
    padding: 5px 20px;
    border: 1px solid transparent ;
    transition: 0.6s ease;
}
ul li a:hover{
    background-color: #fff;
    color: #000;
  
}
.zoom {
 
  transition: transform .2s;
 
}

.zoom:hover {
  -ms-transform: scale(1.2); 
  -webkit-transform: scale(1.2); 
  transform: scale(1.2); 
}
.name
{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
}
.name h1{
    color: #fff;
    font-size: 40px;
}
.button
{
     position: absolute;
    top: 60%;
    left: 48%;
    transform: translate(-50%,-50%);
    
}
.btn
{
     text-decoration: none;
    color: #fff;
    padding: 5px 20px;
    border: 1px solid #fff ;
    transition: 0.6s ease;
}
.btn:hover
{
     background-color: #fff;
    color: #000;
}
 


</style>


    <body>
        <header>
           <div class="name">
               <h1>WELCOME TO THE PORTAL</h1>
           </div>
           <div class="button">
               <a href="/Medical_Tourism1/welcome" class="btn zoom">Sign in</a>
               <a href="/Medical_Tourism1/register" class="btn zoom">Sign Up</a>
           </div>
         

        </header>
        

   


</body>
</html>