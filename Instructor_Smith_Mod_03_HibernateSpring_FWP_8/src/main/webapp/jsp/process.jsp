
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 

<jsp:useBean id="p" scope="session" class="spring.model.Person">
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
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
		<%@ page import="spring.model.*" %>	
			
			<% 
			ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
			 PersonJDBCTemplate jdbc = 
			         (PersonJDBCTemplate)context.getBean("jdbc");
			java.util.List<Person> list = jdbc.getPeopleDBList();
	 jdbc.create(p); 
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