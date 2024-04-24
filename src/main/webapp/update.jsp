<%@include file="plugins.jsp"%>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="org.hibernate.cfg.Configuration,com.note,java.util.*,javax.persistence.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Popup</title>
<script>
	function redirectToJSP() {
		// Redirect to the desired JSP page
		window.location.href = "update";
	}

	// Function to display the modal when the page loads
	window.onload = function() {
		$('#exampleModal').modal('show'); // Show the modal with jQuery
		// Or use pure JavaScript:
		// document.getElementById('exampleModal').style.display = 'block';
	};
</script>
<style>
/* Popup container */
.popup {
	display: block;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}
input{
margin-bottom: 12px;
}

.purple {
	background: rgb(2, 0, 36);
	background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%,
		rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
}

/* Popup content */
.popup-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	text-align: center; 
}
</style>
</head>
<body>

<%
	int id = Integer.parseInt(request.getParameter("noteid"));
	Session s = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
	note note = s.get(note.class, id);
	%>
	<div class="container-fluid p-0 m-0">
		<%@include file="navigation.jsp"%>
	<form action="update" method="post" class="form-container" style="margin:25px;">
							<label for="exampleInputEmail1">Note Title :</label> 
							<input type="hidden" value="<%=note.getId()%>" name="id" >
							<input
								required type="text" name="title" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter Title" 
								value="<%=note.getTitle() %>";
								required>
							<div class="form-group">
								<label for="content">Content :</label>
								<textarea id="content" name="content" class="form-control"
									style="height: 200px;" 
								
									required><%=note.getContent() %></textarea>
							</div>
							<input type="submit" onclick="redirectToJSP()" value="save" class="btn btn-success"/>
				</form>
	
</div>
</body>
</html>
