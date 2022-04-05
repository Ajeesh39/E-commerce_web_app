<%@page import="basic.RegisterDao"%>  
<jsp:useBean id="u" class="basic.Regist"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=RegisterDao.save(u);  
if(i>0){  
response.sendRedirect("adshop-success.jsp");  
}else{  
response.sendRedirect("adshop-error.jsp");  
}  
%>