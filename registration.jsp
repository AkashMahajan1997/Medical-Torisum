<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
    <head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Login Portal</title>
    </head>
<style>
*{
   margin: 0;
   padding:0;
   font-family: Century Gothic;

}
header{
    background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(loginimage.jpg);
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
    top: 45%;
    left: 75%;
    transform: translate(-50%,-50%);
}
.name h1{
    color: #fff;
    font-size: 40px;
}
.button
{
   
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
.active
{
      
   
    padding: 5px 20px;
    border: 1px solid #fff ;
    transition: 0.6s ease;
    background-color:#fff;
  
}
.left
{
    width: 13.33%;
    height: 300px;
     border-radius: 30%;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 35%;
    left: 15%;
    position: absolute;
    border: 1px solid #fff;
    box-sizing: border-box;
    padding: 70px 30px;

}
.right
{
   width: 13.33%;
    height: 300px;
    border-radius: 30%;
    background: rgba(0, 0, 0, 0.7);
    color: #fff;
    top: 35%;
    left: 65%;
    position: absolute;
    border: 1px solid #fff;
    box-sizing: border-box;
    padding: 70px 30px;

}

.middle
{
    width: 13.33%;
    height: 300px;
     border-radius: 30%;
    background: rgba(0, 0, 0, 0.7);
    color: #fff;
    top: 35%;
    left: 40%;
    position: absolute;
    border: 1px solid #fff;
    box-sizing: border-box;
    padding: 70px 30px;
    

}

a:hover{
    background-color: #fff;
    color: #000;
  
}
.zoom1 {
  padding: 50px;
  background-color:rgba(0, 0, 0, 0.5);
  transition: transform .2s;
  width: 200px;
  height: 200px;
  margin: 0 auto;
  text-align:center;
}

.zoom1:hover {
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
}
.userimg{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -60px;
    left: calc(50% - 50px);
}
.hospitalimg
{   width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -60px;
    left: calc(50% - 50px);
   
}
.loginas
{
    background-color: rgba(0, 0, 0, 0.7);
    color:#fff;
    width:30%;
    margin-top:5%;
    position:absolute;
    
    border: 1px solid #fff;
    border-left: #000;
    text-align: right;
    padding: 0.3%;
}



</style>
    <body>
        <header>
          
           
                <div class="loginas">
                    <h1>SignUp as</h1>
                </div>
                <a href="/Medical_Tourism1/register/user">
                        <div class="left zoom1">
                        <img src="user.png" class="userimg">   
                        <pre>  <h1> USER </h1> </pre>
                      

                        </div>
                </a>
                <a href="/Medical_Tourism1/register/hospital">
                <div class="right zoom1">
                    <img src="doctor.png" class="hospitalimg">
                    <pre> <h1>HOSPITAL </h1></pre>

                        
                </div>
                </a>
                       
                    
           </div>
           
         

        </header>
        

    </body>

</html>