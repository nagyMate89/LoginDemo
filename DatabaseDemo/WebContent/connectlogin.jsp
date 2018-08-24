<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Connect to Database</title>

<style  type="text/css">

#content { position: relative;}

#login {
	position: relative;
	top: 80px;
}

.align-right {
	text-align: right;
}

table {
	border: 1px solid gray;
	padding: 20px;
	background-color: #CCCCFF;
}

.message {
	font-size: 16px;
	font-weight: bold;
	font-color: red;
}


</style>

</head>
<body>

<center>

<div id="connectlogin">

<h3>Connect to Database</h3>

<form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/Controller?action=connectlogin") %>">

<input type="hidden" name="action" value="connectlogin" />

<table>

<tr><td class="align-right">Port: </td><td><input type="text" name="port" value="<%= request.getAttribute("port") %>"/></td></tr>
<tr><td class="align-right">Database: </td><td><input type="text" name="database" value=""/></td></tr>
<tr><td class="align-right">Username: </td><td><input type="text" name="dbUsername" value=""/></td></tr>
<tr><td class="align-right">Password: </td><td><input type="password" name="dbPassword" value=""/></td></tr>
<tr><td class="align-right" colspan="2"><input type="submit" value="Log in"/></td></tr>

</table>

<p class="message"><%= request.getAttribute("message") %></p>

</form>

</div>


</center>


</body>
</html>