<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Education"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.rahulportfolio.model.Profile" %>
<%@ page import="com.rahulportfolio.model.Settings" %>


<%
Profile profile = (Profile) request.getAttribute("profile");

Settings settings = 
(Settings) request.getAttribute("settings");
%>


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>

<%= settings != null && settings.getMetaTitle()!=null 
? settings.getMetaTitle()
: "Rahul Vanve | Java Full Stack Developer" %>

</title>



<meta name="description"

content="<%= settings != null && settings.getMetaDescription()!=null
? settings.getMetaDescription()
: "Professional Java Full Stack Developer Portfolio" %>">


<meta name="keywords"

content="<%= settings != null && settings.getMetaKeywords()!=null
? settings.getMetaKeywords()
: "Java Developer, JSP, Servlet, JDBC, MySQL" %>">



<!-- Tailwind -->

<script src="https://cdn.tailwindcss.com"></script>



<!-- Custom CSS -->

<link rel="stylesheet" href="css/style.css">



<!-- Google Font -->

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
rel="stylesheet">


<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


</head>



<body class="<%=

settings != null 
&& "light".equals(settings.getTheme())

?

"bg-white text-black"

:

"bg-slate-950 text-white"

%> font-[Poppins]">





<!-- Maintenance Mode -->

<%

if(settings != null && settings.isMaintenanceMode()){

%>


<div class="min-h-screen flex items-center justify-center">

<h1 class="text-5xl font-bold text-cyan-400">

Website Under Maintenance

</h1>

</div>


<%

return;

}

%>





<!-- Navbar -->

<jsp:include page="components/navbar.jsp"/>





<!-- Hero -->

<%

if(settings == null || settings.isShowHero()){

%>

<jsp:include page="components/hero.jsp"/>

<%

}

%>





<!-- Skills -->

<%

if(settings == null || settings.isShowSkills()){

%>

<jsp:include page="components/skills.jsp"/>

<%

}

%>





<!-- Projects -->

<%

if(settings == null || settings.isShowProjects()){

%>

<jsp:include page="components/projects.jsp"/>

<%

}

%>





<!-- Experience -->

<%

if(settings == null || settings.isShowExperience()){

%>

<jsp:include page="components/experience.jsp"/>

<%

}

%>





<!-- Education -->

<%

if(settings == null || settings.isShowEducation()){

%>

<jsp:include page="components/education.jsp"/>

<%

}

%>





<!-- Certificates -->

<%

if(settings == null || settings.isShowCertificates()){

%>

<jsp:include page="components/certifications.jsp"/>

<%

}

%>





<!-- Contact -->

<%
if(settings == null || settings.isShowContact()){
%>

<jsp:include page="components/contact.jsp"/>

<%
}
%>


<jsp:include page="components/footer.jsp"/>


<script src="js/script.js"></script>

</body>

</html>