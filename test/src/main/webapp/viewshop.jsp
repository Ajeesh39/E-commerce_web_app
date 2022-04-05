    <!DOCTYPE html>  
      
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>View Users</title>  
    </head>  
    <body>  
      
    <%@page import="basic.RegisterDao,basic.Regist,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <h1>SHOP List</h1>  
      
    <%  
    List<Regist> list=RegisterDao.getAllRecords();  
    request.setAttribute("list",list);  
    %>  
      
    <table border="1" width="90%">  
    <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Address</th><th>Place</th>  
    <th>Delete</th></tr>  
    <c:forEach items="${list}" var="u">  
    <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
    <td>${u.getEmail()}</td><td>${u.getAddress()}</td><td>${u.getPlace()}</td>  
    <td><a href="deleteshop.jsp?id=${u.getId()}">Delete</a></td></tr>  
    </c:forEach>  
    </table>  
     
      
    </body>  
    </html>  

