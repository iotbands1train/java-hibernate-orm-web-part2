<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="com.jdbc.MyJDBC"%>
			
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="css/style-1.css" %>
</style>
<script type="text/javascript">
  <%@include file="js/script.js" %>
</script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<div>

		<jsp:include page="navi.jsp"></jsp:include>

	</div>


<div class="outDiv">

		<div class="inDiv" style="text-align: center;">

			<div style="border: solid;">


				<table>
					<tr>
						<td>
							<h1>PersonJSP CRUD</h1>

						</td>
					</tr>

					<tr>
						<td>
							<div>
  
									<a   href="jsp/adduserform.jsp">Add New User</a> 
									<a  href="jsp/viewusers-by-row-asc.jsp">View Users</a> 
									 


							</div>
						</td>

					</tr>
					<tr></tr>
				</table>


				<br> <br>
			</div>
		</div>
	</div>
	 
	
</body>
</html>
