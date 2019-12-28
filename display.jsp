<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="margin-top:20%;margin-left:30%;">


from : 
<input type="text" value="<%= session.getAttribute("from") %>" /><br><br>
too
<input type="text" value="<%= session.getAttribute("too") %>" /><br>
<br>
from <%= session.getAttribute("from") %><br>
too <%= session.getAttribute("too") %><br>

</body>
</html>