<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.rahulportfolio.model.Project"%>

<%
if(session.getAttribute("admin")==null){
    response.sendRedirect("admin-login.jsp");
    return;
}

Project project = (Project)request.getAttribute("project");

if(project == null){
    response.sendRedirect("../adminDashboard");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Edit Project</title>

<style>

body{

    font-family: Arial;
    background:#f4f4f4;

}

.container{

    width:600px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px rgba(0,0,0,.1);

}

input,
textarea{

    width:100%;
    padding:12px;
    margin-top:10px;
    margin-bottom:18px;
    box-sizing:border-box;

}

button{

    padding:12px 25px;
    background:#06b6d4;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;

}

button:hover{

    background:#0891b2;

}

a{

    text-decoration:none;

}

</style>

</head>

<body>

<div class="container">

<h2>Edit Project</h2>

<form action="<%=request.getContextPath()%>/updateProject" method="post">

<input
type="hidden"
name="id"
value="<%=project.getId()%>">

<label>Project Title</label>

<input
type="text"
name="title"
value="<%=project.getTitle()%>"
required>

<label>Description</label>

<textarea
name="description"
rows="5"
required><%=project.getDescription()%></textarea>

<label>Technologies</label>

<input
type="text"
name="technologies"
value="<%=project.getTechnologies()%>"
required>

<label>GitHub Link</label>

<input
type="text"
name="githubLink"
value="<%=project.getGithubLink()==null?"":project.getGithubLink()%>">

<label>Live Demo Link</label>

<input
type="text"
name="liveDemoLink"
value="<%=project.getLiveDemoLink()==null?"":project.getLiveDemoLink()%>">

<label>Image Path</label>

<input
type="text"
name="imagePath"
value="<%=project.getImagePath()==null?"":project.getImagePath()%>">

<button type="submit">

Update Project

</button>

&nbsp;

<a href="<%=request.getContextPath()%>/adminDashboard">

Cancel

</a>

</form>

</div>

</body>
</html>