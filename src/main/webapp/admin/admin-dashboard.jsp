<%@ page import="java.util.List" %>
<%@ page import="com.rahulportfolio.model.Project" %>
<%@ page import="com.rahulportfolio.model.Admin" %>
<%@ page import="com.rahulportfolio.model.Education" %>


<%

Integer skillCount = (Integer) request.getAttribute("skillCount");

if(skillCount == null){
    skillCount = 0;
}


Admin admin = (Admin)session.getAttribute("admin");


if(admin == null){

    response.sendRedirect("admin-login.jsp");
    return;

}



Integer projectCount = (Integer)request.getAttribute("projectCount");

if(projectCount == null){
    projectCount = 0;
}



List<Education> educationList =
(List<Education>)request.getAttribute("educationList");


int totalEducation = 0;


if(educationList != null){

    totalEducation = educationList.size();

}


String pageName = request.getParameter("pageName");


%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>
Rahul Portfolio | Admin Dashboard
</title>


<meta name="viewport" content="width=device-width, initial-scale=1.0">


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



<%

if(pageName == null){

%>



<!-- DASHBOARD HOME -->


<div class="mb-10">


<h1 class="text-4xl font-bold">

Welcome

<span class="text-cyan-400">

<%=admin.getUsername()%>

</span>

👋

</h1>



<p class="text-slate-400 mt-2">

Here is your portfolio overview

</p>


</div>





<div class="grid md:grid-cols-3 lg:grid-cols-6 gap-6">





<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

<h3 class="text-slate-400">

Projects

</h3>


<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=projectCount%>

</h1>

</div>






<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">


<h3 class="text-slate-400">

Skills

</h3>


<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=skillCount%>

</h1>


</div>






<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">


<h3 class="text-slate-400">

Education

</h3>


<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=totalEducation%>

</h1>


</div>






<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

<h3 class="text-slate-400">

Experience

</h3>

<%
Integer experienceCount =
(Integer)request.getAttribute("experienceCount");

if(experienceCount == null){
    experienceCount = 0;
}
%>

<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=experienceCount%>

</h1>


</div>





<%
Integer certificateCount =
(Integer)request.getAttribute("certificateCount");

if(certificateCount == null){
    certificateCount = 0;
}
%> 

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">


<h3 class="text-slate-400">

Certificates

</h3>


<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=certificateCount%>

</h1>


</div>


<%
Integer messageCount =
(Integer)request.getAttribute("messageCount");

if(messageCount == null){
    messageCount = 0;
}
%>



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">


<h3 class="text-slate-400">

Messages

</h3>


<h1 class="text-4xl font-bold text-cyan-400 mt-3">

<%=messageCount%>

</h1>


</div>



</div>




<%

}

else if(pageName.equals("addProject")){

%>

<%@ include file="project-form.jsp" %>


<%

}

else if("skill".equals(pageName)){

%>

<%@ include file="skills.jsp" %>

<%

}

else if("education".equals(pageName)){
%>

<%@ include file="education.jsp" %>

<%
}

else if(pageName.equals("experience")){

%>

<%@ include file="experience.jsp" %>


<%

}
else if(pageName.equals("certificate")){

%>

<%@ include file="certificates.jsp" %>


<%

}

else if(pageName.equals("message")){

%>

<%@ include file="messages.jsp" %>

<%

}

else if(pageName.equals("profile")){

%>

<%@ include file="profile.jsp" %>

<%

}


%>



</main>


</div>


</body>

</html>