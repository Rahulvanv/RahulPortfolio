<%@ page import="com.rahulportfolio.model.Experience"%>


<%@ page import="com.rahulportfolio.model.Experience"%>


<%

if(session.getAttribute("admin")==null){

response.sendRedirect(
request.getContextPath()+"/admin/admin-login.jsp"
);

return;

}



Experience experience = 
(Experience)request.getAttribute("experience");



if(experience == null){

response.sendRedirect(
request.getContextPath()+"/experienceDashboard"
);

return;

}

%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Edit Experience | Rahul Portfolio</title>


<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script src="https://cdn.tailwindcss.com"></script>


<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">


<style>

body{
font-family:'Poppins',sans-serif;
}

</style>


</head>



<body class="bg-slate-950 text-white flex justify-center items-center min-h-screen">



<div class="w-full max-w-3xl bg-slate-900 border border-slate-700 rounded-2xl p-10 shadow-xl">



<h2 class="text-3xl font-bold mb-8">

✏ Edit 

<span class="text-cyan-400">
Experience
</span>

</h2>





<form action="<%=request.getContextPath()%>/editExperience" method="post">


<input 
type="hidden"
name="id"
value="<%=experience.getId()%>"
>




<div class="grid md:grid-cols-2 gap-6">





<div>

<label class="block mb-2 text-slate-300">

Company Name

</label>


<input

type="text"

name="companyName"

value="<%=experience.getCompanyName()%>"

required

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-3">

</div>








<div>

<label class="block mb-2 text-slate-300">

Job Role

</label>


<input

type="text"

name="jobRole"

value="<%=experience.getJobRole()%>"

required

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-3">

</div>







<div>

<label class="block mb-2 text-slate-300">

Start Date

</label>


<input

type="text"

name="startDate"

value="<%=experience.getStartDate()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-3">


</div>








<div>

<label class="block mb-2 text-slate-300">

End Date

</label>


<input

type="text"

name="endDate"

value="<%=experience.getEndDate()%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-3">


</div>







<div class="md:col-span-2">


<label class="block mb-2 text-slate-300">

Description

</label>


<textarea

name="description"

rows="5"

class="w-full bg-slate-800 border border-slate-700 rounded-xl p-3"><%=experience.getDescription()%></textarea>


</div>





</div>






<div class="flex gap-4 mt-8">



<button

type="submit"

class="bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full">


Update Experience


</button>





<a

href="<%=request.getContextPath()%>/experienceDashboard"

class="bg-red-500 hover:bg-red-600 px-8 py-3 rounded-full">


Cancel


</a>





</div>






</form>



</div>



</body>

</html>