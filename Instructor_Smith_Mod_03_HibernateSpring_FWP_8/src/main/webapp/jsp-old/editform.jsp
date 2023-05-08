
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/style-1.css" %>
</style>
<script type="text/javascript">
  <%@include file="../js/script.js" %>
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body> 
<div>
 <jsp:include page="navi.jsp"></jsp:include> 

</div>
	<%@page import="com.jdbc.MyJDBC,com.model.Person"%>

	<% 
	String id = request.getParameter("id");
	Person u = MyJDBC.getRecordById(Long.parseLong(id));
	%>
<div class="outDiv">
<div class="inDiv">
	<form action="edituser.jsp" method="post">
		<table> 
		<tr>
	<h1>Edit Form</h1></tr>
		<tr><td>
		<input type="hidden" name="id" value="<%=u.getId()%>" /></td></tr>
			<tr>
				<td>Fname:</td>
				<td><input type="text" name="fname" value="<%=u.getFname()%>" /></td>
			</tr>			
			<tr>
				<td>Lname:</td>
				<td><input type="text" name="lname" value="<%=u.getLname()%>" /></td>
			</tr>
			<tr>
				<td>Street:</td>
				<td><input type="text" name="street" value="<%=u.getStreet()%>" /></td>				 
			</tr>	
			<tr>
				<td>City:</td>
				<td><input type="text" name="city" value="<%=u.getCity()%>" /></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state" value="<%=u.getState()%>" /></td>
			</tr>
			<tr>
				<td>Zip:</td>
				<td><input type="text" name="zip" value="<%=u.getZip()%>" /></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><input type="text" name="phone" value="<%=u.getPhone()%>" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
	</form>
</div></div>
</body>
</html>