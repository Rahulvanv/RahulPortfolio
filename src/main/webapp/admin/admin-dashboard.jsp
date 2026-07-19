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

    response.sendRedirect(
    request.getContextPath()+"/admin/admin-login.jsp");

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


String pageName = (String) request.getAttribute("pageName");

if(pageName == null){
    pageName = request.getParameter("pageName");
}

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
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">



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

<div class="mb-10 flex items-center justify-between">

    <div>

        <h1 class="text-4xl font-bold flex items-center gap-3">

            <i class="fa-solid fa-user-shield text-cyan-400"></i>

            Welcome

            <span class="text-cyan-400">
                <%=admin.getUsername()%>
            </span>

            <i class="fa-solid fa-hand-sparkles text-yellow-400 text-3xl"></i>

        </h1>

        <p class="text-slate-400 mt-3 flex items-center gap-2">

            <i class="fa-solid fa-chart-line text-cyan-400"></i>

            Here is your portfolio overview

        </p>

    </div>

    <div
        class="w-20 h-20 rounded-full bg-slate-900 border border-cyan-500 flex items-center justify-center shadow-lg shadow-cyan-500/20">

        <i class="fa-solid fa-user-gear text-4xl text-cyan-400"></i>

    </div>

</div>





<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-3 gap-5">




<a href="<%=request.getContextPath()%>/projectDashboard"
class="bg-slate-900 border border-slate-700 rounded-2xl p-6 block hover:border-cyan-400 transition">


    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-diagram-project text-cyan-400"></i>
                Projects
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=projectCount%>
            </h1>

        </div>

        <i class="fa-solid fa-diagram-project text-5xl text-slate-700"></i>

    </div>


</a>






<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-code text-cyan-400"></i>
                Skills
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=skillCount%>
            </h1>

        </div>

        <i class="fa-solid fa-code text-5xl text-slate-700"></i>

    </div>

</div>






<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-graduation-cap text-cyan-400"></i>
                Education
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=totalEducation%>
            </h1>

        </div>

        <i class="fa-solid fa-graduation-cap text-5xl text-slate-700"></i>

    </div>

</div>




<%
Integer experienceCount =
(Integer)request.getAttribute("experienceCount");

if(experienceCount == null){
    experienceCount = 0;
}
%>

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-briefcase text-cyan-400"></i>
                Experience
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=experienceCount%>
            </h1>

        </div>

        <i class="fa-solid fa-briefcase text-5xl text-slate-700"></i>

    </div>

</div>





<%
Integer certificateCount =
(Integer)request.getAttribute("certificateCount");

if(certificateCount == null){
    certificateCount = 0;
}
%> 

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-award text-cyan-400"></i>
                Certificates
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=certificateCount%>
            </h1>

        </div>

        <i class="fa-solid fa-award text-5xl text-slate-700"></i>

    </div>

</div>

<%
Integer messageCount =
(Integer)request.getAttribute("messageCount");

if(messageCount == null){
    messageCount = 0;
}
%>



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-6">

    <div class="flex items-center justify-between">

        <div>

            <h3 class="text-slate-400 flex items-center gap-2">
                <i class="fa-solid fa-envelope text-cyan-400"></i>
                Messages
            </h3>

            <h1 class="text-4xl font-bold text-cyan-400 mt-3">
                <%=messageCount%>
            </h1>

        </div>

        <i class="fa-solid fa-envelope text-5xl text-slate-700"></i>

    </div>

</div>


</div>




<%

}

else if(pageName.equals("project")){

%>

<%@include file="project.jsp" %>


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

else if(pageName.equals("settings")){

%>

<%@ include file="settings.jsp" %>

<%

}


%>



</main>


</div>


</body>

</html>