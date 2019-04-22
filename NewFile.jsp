                <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
@CHARSET "ISO-8859-1";
html {
  height: 100%;
}

body {
        background-image:url("https://images.unsplash.com/photo-1478476868527-002ae3f3e159?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
    background-size: cover;
    background-repeat:no-repeat;
    font-family: sans-serif;
    
       
}

.intro {
       margin: 30px 0px;
       font-weight: bold;
}

h1 {
       color: ff0000;
       text-transform: uppercase;
       font-weight: 800;
}

p {
       font-weight: 600;
}

#first {
       margin-top: 10px;
       color: #FFCD5D;
}

#second {
       color: #51DF70;

}

#third {
       color: #025F70;
       margin-bottom: 30px;
}


#enter {
       border: none;
       padding: 5px 15px;
       border-radius: 5px;
       color: #04A1BF;
       background-color: #025F70;
       transition: all 0.75s ease;
       -webkit-transition: all 0.75s ease;
       -moz-transition: all 0.75s ease;
       -ms-transition: all 0.75s ease;
       -o-transition: all 0.75 ease;
       font-weight: normal;
}

#enter:hover{
       background-color: #02798F;
       color: #FFCD5D;
}

ul {
       text-align: left;
       margin-top: 20px;
}


li {
       list-style: none;
       padding: 10px 20px;
       color: 00000;
       text-transform: capitalize;
       font-weight: 600;
       border: 2px solid #025f70;
       border-radius: 5px;
       margin-bottom: 10px;
       background: #4EB9CD;
       transition: all 0.75s ease;
       -webkit-transition: all 0.5s ease;
       -moz-transition: all 0.5s ease;
       -ms-transition: all 0.5s ease;
       -o-transition: all 0.5 ease;
}

li:hover {
       background: #76CFE0;
}

li > button {
       font-weight: normal;
       background: none;
       border: none;
       float: right;
       color: #025f70;
       font-weight: 800;
}

input {
       border-radius: 5px;
       min-width: 65%;
       padding: 5px;
       border: none;
}

.done {
    background-image: linear-gradient(top, #f1f3f3, #d4dae0);
       background: #51DF70 !important;
       color: #00891E;
}
body { background-image: radial-gradient( cover, rgba(92,100,111,1) 0%,rgba(31,35,40,1) 100%), url("https://images.unsplash.com/photo-1478476868527-002ae3f3e159?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60") }
.Approved {
  background: #eceeee;
  border: 1px solid #42464b;
  border-radius: 6px;
  height: 327px;
  margin: 20px auto 0;
  width: 328px;
}
.Approved  {
  background-image: linear-gradient(top, #f1f3f3, #d4dae0);
  border-bottom: 1px solid #a6abaf;
  border-radius: 6px 6px 0 0;
  box-sizing: border-box;
  color: #727678;
  display: block;
  height: 43px;
  font: 600 14px/1 'Open Sans', sans-serif;
  padding-top: 14px;
  margin: 0;
  text-align: center;
  text-shadow: 0 -1px 0 rgba(0,0,0,0.2), 0 1px 0 #fff;
}

.delete {
       display: none;
}
</style>
<body>
       <div class="container">
              <div class="row">
                     <div class="intro col-12">
                           <h1>Approval for hospital</h1>
                           <div>
                                  <div class="border1"></div>
                                  
                     
                     </div>
              </div>

              <div class="row">
                     <div class="helpText col-12">
                           
                     </div>
              </div>

              <div class="row">
                     <div class="col-12">
                           
<td>
<input type="submit" value="Approved"><br />
  
  

</td>
                     </div>
              </div>

              <!-- Empty List -->
              <div class="row">
                     <div class="listItems col-12">
                           <ul class="col-12 offset-0 col-sm-8 offset-sm-2">
                           </ul>
                     </div>
              </div>

       </div>
       <script type="text/javascript" src="script_method3.js"></script>
</body>
</html>

