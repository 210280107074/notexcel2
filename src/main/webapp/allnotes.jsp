<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="org.hibernate.cfg.Configuration,com.note,java.util.*,javax.persistence.*" %>
<%-- Add any other necessary import statements here --%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="plugins.jsp" %>
    <title>Add notes</title>
    <style>
        .purple {
            background: rgb(2, 0, 36);
            background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
        }

        /* Add padding to the form container */
    </style>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@ include file="navigation.jsp" %>
</div>

<%
    try {
        SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        Session s = sessionFactory.openSession();
        Query<note> query = s.createQuery("from notes", note.class);
        List<note> noteList = query.list();
        for (note note : noteList) {
 %>
            <div class="card">
                <div class="card-header"></div>
                <div class="card-body">
                    <h5 class="card-title"><%= note.getTitle() %></h5>
                    <p class="card-text"><%= note.getContent() %></p>
                    <a href="delete?noteid=<%= note.getId() %>" class="btn btn-danger">Delete</a>
                    <a href="update.jsp?noteid=<%= note.getId() %>" class="btn btn-primary">Update</a>
                </div>
            </div>
<%
        }
        s.close(); // Close the session after use
        sessionFactory.close(); // Close the session factory after use
    } catch (Exception e) {
        // Handle exceptions gracefully
        out.println("An error occurred: " + e.getMessage());
        e.printStackTrace(); // Print stack trace for debugging (optional)
    }
%>

</body>
</html>
