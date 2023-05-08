
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.jdbc.MyJDBC"%>

<jsp:useBean id="p" scope="session" class="com.model.Person">
</jsp:useBean>

<jsp:setProperty property="*" name="p" />
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="../css/style-1.css" %>
</style>
<script type="text/javascript">
  <%@include file="../js/script.js" %>
</script>
<meta charset="UTF-8">
<title>Insert Person</title>

</head>
<body>

	<div>
		<jsp:include page="navi.jsp"></jsp:include>

	</div>
	<%
	int status = MyJDBC.register(p);
	if (status > 0)
		out.print("You are successfully registered");
	%>
	<div class="outDiv">

		<div class="inDiv">
			<form method="post" action="viewusers-by-row-asc.jsp">
				<table>
					<tr>
						<td><label>ID</label></td>
						<td><jsp:getProperty property="id" name="p" /></td>
					</tr>


					<tr>
						<td><label>FirstName</label></td>
						<td><jsp:getProperty property="fname" name="p" /></td>
					</tr>

					<tr>
						<td><label>LastName</label></td>
						<td><jsp:getProperty property="lname" name="p" /></td>
					</tr>

					<tr>
						<td><label>Street</label></td>
						<td><jsp:getProperty property="street" name="p" /></td>
					</tr>

					<tr>
						<td><label>City</label></td>
						<td><jsp:getProperty property="city" name="p" /></td>
					</tr>

					<tr>
						<td><label>State</label></td>
						<td><jsp:getProperty property="state" name="p" /></td>
					</tr>

					<tr>
						<td><label>Zip</label></td>
						<td><jsp:getProperty property="zip" name="p" /></td>
					</tr>

					<tr>
						<td><label>Phone</label></td>
						<td><jsp:getProperty property="phone" name="p" /></td>
					</tr>

					<tr> 
						<td><input type="submit" value="Submit" /></td>
 
					</tr> 
				</table>
			</form>
		</div>

	</div>
</body>
</html>