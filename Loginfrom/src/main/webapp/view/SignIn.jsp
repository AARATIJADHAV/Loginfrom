<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="ISO-8859-1">
<title>SignIn Page</title>
</head>
<body>
<style>
        body{
            background-color:rgb(51, 49, 49);
            color: aliceblue;
        }
       
        div{
    background-color: black;
    color: white;
    width: 400px;
    height: 400px;
    border: 2px solid black;
    margin-top: 100px; 
    margin-left: 50px; 
    padding-top: 100px;
    padding-left: 100px;
    padding-right: 100px;
    }
    input{
margin-top: 20px;
}
button{
   
    cursor: pointer;
}

    }
     /* h1{
        color: aqua;
        text-shadow: 2px 3px; 
    } 
     */

    .icons{
        color: rgb(28, 165, 220);
    }
    i{
        /* text-shadow: 2px 4px; */
       
        color: white;
    }
    .fa{
        font-size: 20px;
    }
        
    </style>
</head>


<body>

	<center>
		<div>
		
	<font color="red"><h3><%

if(request.getAttribute("msg")!=null){
	out.print(request.getAttribute("msg"));
}
%></h3></font>
	<form action="SignIn" method="post">
   <b> <h1>Sign In To Your Account</h1></b>
    <h3> <i class="fa-solid fa-arrow-right"></i>  Don't  have an account?
       <a href="createaccountpage">Signup</a><br>
    </h3>
    <form action="SignIn"method="post">
    EmailID:
    <input type="text" name="username" placeholder="EmailID">
    <i class="fa fa-user"></i>
    <br></br>
    Password:
   <input type="Password" name="password" placeholder="Password">
   <i class="fa fa-lock"></i>
   <br></br>
   <button onclick="dosomething()"style=
   "background-color: rgb(70, 67, 67); 
   color: rgb(0, 255, 115);
   height:40px;
   width:400px;
   border-radius:100px%;
   border-color: green"
   hover="
    background-color:rgb(120, 13, 36);
    color:yellow;">SignIn</button><br><br>


   

    

   Continue WithOut SignIn?<a href="homepage">Continue</a><br><br>
   </div>
   </center>
</from>


</body>
</html>