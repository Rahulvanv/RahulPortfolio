<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.rahulportfolio.model.Project"%>
<%@ page import="com.rahulportfolio.model.Admin"%>

<%

Admin admin=(Admin)session.getAttribute("admin");

if(admin==null){

    response.sendRedirect("admin-login.jsp");
    return;

}

List<Project> projectList=(List<Project>)request.getAttribute("projectList");

if(projectList==null){

    projectList=new ArrayList<Project>();

}

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>

Manage Projects

</title>

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<script src="https://cdn.tailwindcss.com"></script>

<link
href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<style>

body{

font-family:'Poppins',sans-serif;

}

</style>

</head>

<body class="bg-slate-950 text-white">

<%@ include file="sidebar.jsp"%>

<div class="ml-72">

<%@ include file="admin-navbar.jsp"%>

<main class="p-8">

<div class="mb-10">

<h1 class="text-4xl font-bold">

Manage

<span class="text-cyan-400">

Projects

</span>

</h1>

<p class="text-slate-400 mt-2">

Add, update and manage your portfolio projects.

</p>

</div>

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">

<div class="flex justify-between items-center mb-8">

<h2 class="text-2xl font-bold">

All Projects

</h2>

<a href="admin-dashboard.jsp?page=addProject"
class="bg-cyan-500 px-6 py-3 rounded-xl">

➕ Add Project

</a>

</div>

<div class="overflow-x-auto">

<table class="w-full text-left">

<thead>

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

</thead>

<tbody>

<%

if(projectList.isEmpty()){

%>

<tr>

<td colspan="4"

class="text-center py-10 text-slate-400">

No Projects Found

</td>

</tr>

<%

}else{

for(Project p : projectList){

%>

<tr class="border-b border-slate-800 hover:bg-slate-800 transition">

<td class="p-4">

<%=p.getId()%>

</td>

<td class="p-4 font-semibold">

<%=p.getTitle()%>

</td>

<td class="p-4">

<%=p.getTechnologies()%>

</td>

<td class="p-4">

<a

href="<%=request.getContextPath()%>/editProject?id=<%=p.getId()%>"

class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg">

Edit

</a>

<a

href="<%=request.getContextPath()%>/deleteProject?id=<%=p.getId()%>"

onclick="return confirm('Delete this project?')"

class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg ml-2">

Delete

</a>

</td>

</tr>

<%

}

}

%>

</tbody>

</table>

</div>

</div>

</main>

</div>

</body>

</html>