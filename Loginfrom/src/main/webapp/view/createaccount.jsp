<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>      body{
            background-color:rgb(51, 49, 49);
            color: aliceblue;
        }
       
        .container{
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
    }</style>
<body>
<br>
<br>
<br>
<br>
<center>
<div class="container">
<font size="10px">CreateAccount</font><br><br>
<form action="createaccount"method="post" >
Username:<input type="text"name="username"><br><br>
Password:<input type="Password"name="password"><br><br>
<input type="submit"value="login">
<input type="reset"value="reset">
</form><br>
<h3><a href="login">Back To Login</a></h3>
</center>
</div>
</body>
</html>