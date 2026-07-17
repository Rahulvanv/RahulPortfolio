<%@ page import="java.util.List" %>
<%@ page import="com.rahulportfolio.model.Project" %>
<%@ page import="com.rahulportfolio.model.Admin" %>

<%

Admin admin = (Admin)session.getAttribute("admin");

if(admin == null){

    response.sendRedirect("admin-login.jsp");
    return;

}


List<Project> projectList =
(List<Project>)request.getAttribute("projectList");


%>


<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>
Projects | Admin
</title>


<script src="https://cdn.tailwindcss.com"></script>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">


<style>

body{

font-family:'Poppins',sans-serif;

}

</style>


</head>



<body class="bg-slate-950 text-white">


<!-- Sidebar -->

<%@ include file="sidebar.jsp" %>



<div class="ml-72">



<!-- Navbar -->

<%@ include file="admin-navbar.jsp" %>




<main class="p-8">



<div class="mb-10">


<h1 class="text-4xl font-bold">

Project 
<span class="text-cyan-400">
Management
</span>

</h1>


<p class="text-slate-400 mt-2">

Add, edit and manage your portfolio projects

</p>


</div>





<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">



<div class="flex justify-between items-center mb-6">


<h2 class="text-2xl font-bold">

All Projects

</h2>



<a href="<%=request.getContextPath()%>/admin/add-project.jsp"

class="bg-cyan-500 hover:bg-cyan-400 px-5 py-2 rounded-full font-semibold">

+ Add Project

</a>


</div>






<div class="overflow-x-auto">


<table class="w-full text-left">



<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
ID
</th>


<th class="p-4">
Title
</th>


<th class="p-4">
Technology
</th>


<th class="p-4">
Action
</th>


</tr>





<%

if(projectList != null && !projectList.isEmpty()){


for(Project p : projectList){

%>



<tr class="border-b border-slate-800">


<td class="p-4">

<%=p.getId()%>

</td>



<td class="p-4">

<%=p.getTitle()%>

</td>



<td class="p-4">

<%=p.getTechnologies()%>

</td>




<td class="p-4">



<a href="<%=request.getContextPath()%>/editProject?id=<%=p.getId()%>"

class="bg-green-500 hover:bg-green-400 px-4 py-2 rounded-lg">

Edit

</a>





<a href="<%=request.getContextPath()%>/deleteProject?id=<%=p.getId()%>"

onclick="return confirm('Delete this project?')"

class="bg-red-500 hover:bg-red-400 px-4 py-2 rounded-lg ml-2">

Delete

</a>



</td>



</tr>




<%

}

}else{

%>


<tr>

<td colspan="4" class="p-6 text-center text-slate-400">

No Projects Found

</td>

</tr>


<%

}

%>



</table>


</div>


</div>





</main>



</div>



</body>


</html>