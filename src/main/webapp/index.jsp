<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

</head>

<body class="bg-slate-950 text-white font-[Poppins]">

    <!-- ================= Navbar ================= -->
    <%@ include file="components/navbar.jsp" %>

    <!-- ================= Hero ================= -->
    <%@ include file="components/hero.jsp" %>

    <!-- ================= About ================= -->
    <%@ include file="components/about.jsp" %>

    <!-- ================= Skills ================= -->
    <%@ include file="components/skills.jsp" %>

    <!-- ================= Projects ================= -->
    <%@ include file="components/projects.jsp" %>

    <!-- ================= Experience ================= -->
    <%@ include file="components/experience.jsp" %>

    <!-- ================= Education ================= -->
    <%@ include file="components/education.jsp" %>

    <!-- ================= Certifications ================= -->
    <%@ include file="components/certifications.jsp" %>

    <!-- ================= Contact ================= -->
    <%@ include file="components/contact.jsp" %>

    <!-- ================= Footer ================= -->
    <%@ include file="components/footer.jsp" %>
    

    <!-- JavaScript -->
    <script src="js/script.js"></script>

</body>

</html>