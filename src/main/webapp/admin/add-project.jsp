<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
if(session.getAttribute("admin")==null){
    response.sendRedirect("admin-login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add Project</title>

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
    box-shadow:0 0 10px rgba(0,0,0,0.1);
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

</style>

</head>

<body>

<div class="container">

<h2>Add New Project</h2>

<form action="../addProject" method="post">

<label>Project Title</label>
<input type="text" name="title" required>

<label>Description</label>
<textarea name="description" rows="5" required></textarea>

<label>Technologies</label>
<input type="text" name="technologies" required>

<label>GitHub Link</label>
<input type="text" name="githubLink">

<label>Live Demo Link</label>
<input type="text" name="liveDemoLink">

<label>Image Path</label>
<input type="text" name="imagePath" placeholder="portfolio.png">

<button type="submit">
    Save Project
</button>

</form>

</div>

</body>
</html>