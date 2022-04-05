<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</style>   
</head>    
<body>    
<center> <h1> Admin Login Form </h1> </center>  
<script>  
function validateform(){  
var name=document.myform.name.value;  
var password=document.myform.password.value;  
  
if (name!="admin" || password!="admin"){  
  alert("Wrong Credentials Contact Admin for further Info");  
  return false;   
  }  
}  
</script>  
<body>  
<form name="myform" method="post" action="http://localhost:8081/test/adminpro.jsp" onsubmit="return validateform()" >  
<p style="font-size: 20px;"><label> UserName : </label></p>  
<input type="text" name="name"><br/>  
<p style="font-size: 20px;"><br><label>Password : </label></p>
<input type="password" name="password"><br/> 
<p style="font-size: 10px;"><br><button type="submit">Login</button></p>   
</form>
</body>     
</html> 