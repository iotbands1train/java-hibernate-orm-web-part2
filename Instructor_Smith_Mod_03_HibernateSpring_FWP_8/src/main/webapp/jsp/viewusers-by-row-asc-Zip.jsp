<%@page import="java.util.function.Function"%>
<%@page import="java.util.Comparator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
		<%@ page import="spring.model.*" %>	
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
<title>View Users</title>
</head>
<body> 
<div> <jsp:include page="navi.jsp"></jsp:include> 

</div>
			<br>
	<div class="outDiv">

		<div class="inDiv"><div  class="in2Div">
		
			<% 
			ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
			 PersonJDBCTemplate jdbc = 
			         (PersonJDBCTemplate)context.getBean("jdbc");
			java.util.List<Person> list = jdbc.getPeopleDBList();
			java.util.Collections.sort(list, Comparator.comparing(spring.model.Person::getZip));
			int size = list.size()+1;
			int i = 1;
			request.setAttribute("size", size);
			request.setAttribute("list", list);
			%>
			<h1>Users List : [${size-1}] count</h1>
			 
			
				<jsp:include page="header.jsp"></jsp:include>

				<table border="1" width="90%" align="center">

					<tr style="background-color:green; color:white">
						
						<th><a href="viewusers-by-row-dsc.jsp"> ct </a></th>
						<th><a href="viewusers-by-row-dsc-id.jsp"> ID </a></th> 
						<th><a href="viewusers-by-row-dsc-Fname.jsp"> Fname </a></th>  
						<th><a href="viewusers-by-row-dsc-Lname.jsp"> Lname </a></th>  
						<th><a href="viewusers-by-row-dsc-Street.jsp"> Street </a></th> 
						<th><a href="viewusers-by-row-dsc-City.jsp"> City </a></th>   
						<th><a href="viewusers-by-row-dsc-State.jsp"> State </a></th>   
						<th><a href="viewusers-by-row-dsc-Zip.jsp"> Zip </a></th>       
						<th><a href="viewusers-by-row-dsc-Phone.jsp"> Phone </a></th>     
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:set var="size" value="${size}"></c:set>
					<c:forEach items="${list}" var="u">
						<tr>
							<td>${len=len+1}</td>
							<td>${u.getId()}</td>
							<td>${u.getFname()}</td>
							<td>${u.getLname()}</td>
							<td>${u.getStreet()}</td>
							<td>${u.getCity()}</td>
							<td>${u.getState()}</td>
							<td>${u.getZip()}</td>
							<td>${u.getPhone().replace('[',' ').replace(']',' ').trim()}</td>
							<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
							<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>
				<br />
				<button onclick="window.location.href='adduserform.jsp';">Add
					New User</button></div>
			</div>
		</div>
	</div>
</body>
</html>
