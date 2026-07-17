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

<title>Edit Project | Admin</title>


<script src="https://cdn.tailwindcss.com"></script>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">


</head>



<body class="bg-slate-950 text-white font-[Poppins] min-h-screen flex items-center justify-center">



<div class="w-full max-w-2xl bg-slate-900 p-10 rounded-2xl border border-slate-700 shadow-xl">



<h2 class="text-4xl font-bold text-center mb-10">

✏ Edit 
<span class="text-cyan-400">
Project
</span>

</h2>




<form action="<%=request.getContextPath()%>/updateProject" method="post">



<input
type="hidden"
name="id"
value="<%=project.getId()%>">





<label class="block text-slate-300 font-semibold mb-2">

Project Title

</label>


<input

type="text"

name="title"

value="<%=project.getTitle()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-6 text-white focus:outline-none focus:border-cyan-400"

required>







<label class="block text-slate-300 font-semibold mb-2">

Description

</label>



<textarea

name="description"

rows="5"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-6 text-white focus:outline-none focus:border-cyan-400"

required><%=project.getDescription()%></textarea>








<label class="block text-slate-300 font-semibold mb-2">

Technologies

</label>


<input

type="text"

name="technologies"

value="<%=project.getTechnologies()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-6 text-white focus:outline-none focus:border-cyan-400"

required>







<label class="block text-slate-300 font-semibold mb-2">

GitHub Link

</label>


<input

type="text"

name="githubLink"

value="<%=project.getGithubLink()==null?"":project.getGithubLink()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-6 text-white focus:outline-none focus:border-cyan-400">







<label class="block text-slate-300 font-semibold mb-2">

Live Demo Link

</label>



<input

type="text"

name="liveDemoLink"

value="<%=project.getLiveDemoLink()==null?"":project.getLiveDemoLink()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-6 text-white focus:outline-none focus:border-cyan-400">







<label class="block text-slate-300 font-semibold mb-2">

Image Path

</label>



<input

type="text"

name="imagePath"

value="<%=project.getImagePath()==null?"":project.getImagePath()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-8 text-white focus:outline-none focus:border-cyan-400">







<div class="flex gap-5">



<button

type="submit"

class="bg-cyan-500 hover:bg-cyan-400 px-8 py-3 rounded-full font-semibold transition duration-300">

Update Project

</button>





<a

href="<%=request.getContextPath()%>/adminDashboard"

class="bg-red-500 hover:bg-red-600 px-8 py-3 rounded-full font-semibold transition duration-300">

Cancel

</a>




</div>



</form>


</div>



</body>

</html>