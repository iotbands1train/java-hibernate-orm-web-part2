<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="dropdown">
		<button class="dropbtn">Menu</button>
		<div class="dropdown-content">
			<a href="../index.jsp">Home</a> <a href="adduserform.jsp">Add</a> 
			<a	href="viewusers-by-row-asc.jsp">View</a>
			<a	href="viewusers-by-row-asc-id.jsp">ViewByID-Ascending Order</a>
			<a	href="viewusers-by-row-dsc-id.jsp">ViewByID-Descending Order</a>
		<a	href="search-view.jsp">Search By ID</a>
		
		</div>

		<style>
/* Style The Dropdown Button */
.dropbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
	cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}
</style>
	</div>
</div>