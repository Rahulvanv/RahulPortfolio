
<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Education"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="com.rahulportfolio.model.Profile" %>

<%
Profile profile = (Profile) request.getAttribute("profile");
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Rahul Vanve | Java Full Stack Developer</title>

    <meta name="description"
        content="Professional Java Full Stack Developer Portfolio using JSP, Servlet, JDBC and MySQL">

    <meta name="keywords"
        content="Java Developer, JSP, Servlet, JDBC, MySQL, Portfolio">

    <!-- Tailwind CSS -->
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

<body class="bg-slate-950 text-white font-[Poppins]">

<jsp:include page="components/navbar.jsp"/>

<jsp:include page="components/hero.jsp"/>


<jsp:include page="components/skills.jsp"/>

<jsp:include page="components/projects.jsp"/>

<jsp:include page="components/experience.jsp"/>

<jsp:include page="components/education.jsp"/>

<jsp:include page="components/certifications.jsp"/>

<jsp:include page="components/contact.jsp"/>

<jsp:include page="components/footer.jsp"/>    
    

    

    <!-- JavaScript -->
    <script src="js/script.js"></script>

</body>

</html>