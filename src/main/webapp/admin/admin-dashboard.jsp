<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Project"%>
<%@ page import="com.rahulportfolio.model.Admin"%>

<%
Admin admin=(Admin)session.getAttribute("admin");

if(admin==null){
    response.sendRedirect("admin-login.jsp");
    return;
}

List<Project> projectList=(List<Project>)request.getAttribute("projectList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>

<body>

<h2>Welcome <%=admin.getUsername()%></h2>

<a href="add-project.jsp">Add New Project</a>

&nbsp;&nbsp;

<a href="../logout">Logout</a>

<hr>

<h2>All Projects</h2>

<table border="1" cellpadding="10">

<tr>

<th>ID</th>

<th>Title</th>

<th>Technology</th>

<th>Action</th>

</tr>

<%
if(projectList!=null){

for(Project p:projectList){
%>

<tr>

<td><%=p.getId()%></td>

<td><%=p.getTitle()%></td>

<td><%=p.getTechnologies()%></td>

<td>

<a href="../editProject?id=<%=p.getId()%>">Edit</a>

|

<a href="../deleteProject?id=<%=p.getId()%>"
onclick="return confirm('Delete this project?')">

Delete

</a>

</td>

</tr>

<%
}
}
%>

</table>

</body>
</html>