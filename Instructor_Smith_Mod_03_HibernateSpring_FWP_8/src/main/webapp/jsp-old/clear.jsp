<%@page import="com.jdbc.MyJDBC"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<style type="text/css"> 
<%@ include file="../css/style-1.css"%> 
</style> 
<script type="text/javascript"> <%@include file="../js/script.js" %> </script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

	<div>
		<jsp:include page="navi.jsp"></jsp:include>
	</div>
	<div class="outDiv">

		<div class="inDiv">
			<div class="in2Div">
				<%@ page import="com.jdbc.MyJDBC, com.model.Person, java.util.*"%>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

				<%
				String value = request.getParameter("value");
				int xVal = 0;
				if (value == null)
					xVal = 1;
				else
					xVal = Integer.parseInt(value);

				xVal = xVal > 25_000 ? 25_000 : xVal;
				List<Person> p = MyJDBC.getAllRecordsClear();
				int size = p.size();
				request.setAttribute("size", size);
				request.setAttribute("list", p);
				%>
			</div>
		</div>
	</div>
	<jsp:forward page="viewusers-by-row-asc.jsp" />
</body>
</html>
