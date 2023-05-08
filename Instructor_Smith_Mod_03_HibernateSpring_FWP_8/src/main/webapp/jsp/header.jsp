
<div>
	<button onclick="window.location.href='adduserform.jsp';">Add
		New User</button>
	<button onclick="window.location.href='clear.jsp';">Clear
		Data-Reset</button>

	<br> <br>
	<div style="float: left">
		<form action="search.jsp">
			Enter ID Number: <input type="text" value="0" name="person_id">
			<br /> <input type="submit" value="Submit" />
		</form>
		<br>
	</div>
	<div>
		<form action="addbatch.jsp" method="Post" style="float: right;">
			<label>#ofPersons:</label> <input type="number" name="value"
				value=150 max="500" min="150" /> <input type="submit"
				value="Submit" />
		</form>
	</div>
	<br> <br>
</div>


