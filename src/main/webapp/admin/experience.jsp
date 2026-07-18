<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Experience"%>


<%

List<Experience> experienceList =
(List<Experience>)request.getAttribute("experienceList");


Experience editExperience =
(Experience)request.getAttribute("editExperience");

%>



<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-2">
    <i class="fa-solid fa-briefcase text-cyan-400"></i>
    Manage
    <span class="text-cyan-400">Experience</span>
</h1>

    <p class="text-slate-400 mt-2">
        Add, update and manage your work experience.
    </p>

</div>




<!-- ================= FORM SECTION ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-12">


<h2 class="text-2xl font-bold mb-8 flex items-center gap-2">

<% if(editExperience==null){ %>

<i class="fa-solid fa-circle-plus text-cyan-400"></i>
<span>Add New Experience</span>

<% }else{ %>

<i class="fa-solid fa-pen-to-square text-yellow-400"></i>
<span>Edit Experience</span>

<% } %>

</h2>




<form 
action="<%=request.getContextPath()%>/<%=editExperience==null?"addExperience":"editExperience"%>"
method="post">


<%

if(editExperience!=null){

%>

<input 
type="hidden"
name="id"
value="<%=editExperience.getId()%>"
>


<%

}

%>





<div class="grid md:grid-cols-2 gap-6">



<!-- Company -->

<div>

<label class="block mb-2 text-slate-300">
    <i class="fa-solid fa-building text-cyan-400 mr-2"></i>
    Company Name
</label>


<input
type="text"
name="companyName"
required

value="<%=editExperience!=null?
editExperience.getCompanyName():""%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>





<!-- Role -->

<div>

<label class="block mb-2 text-slate-300">
    <i class="fa-solid fa-user-tie text-cyan-400 mr-2"></i>
    Job Role
</label>


<input
type="text"
name="jobRole"
required

value="<%=editExperience!=null?
editExperience.getJobRole():""%>"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>





<!-- Start Date -->

<div>

<label class="block mb-2 text-slate-300">
    <i class="fa-solid fa-calendar-days text-cyan-400 mr-2"></i>
    Start Date
</label>


<input
type="text"
name="startDate"

value="<%=editExperience!=null?
editExperience.getStartDate():""%>"

placeholder="Jan 2025"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>





<!-- End Date -->

<div>

<label class="block mb-2 text-slate-300">
    <i class="fa-solid fa-calendar-check text-cyan-400 mr-2"></i>
    End Date
</label>


<input
type="text"
name="endDate"

value="<%=editExperience!=null?
editExperience.getEndDate():""%>"

placeholder="Present"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>





<!-- Description -->

<div class="md:col-span-2">


<label class="block mb-2 text-slate-300">
    <i class="fa-solid fa-align-left text-cyan-400 mr-2"></i>
    Description
</label>


<textarea

name="description"

rows="5"

class="w-full min-h-[120px] bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white resize-none"><%=editExperience!=null?
editExperience.getDescription():""%></textarea>


</div>



</div>






<!-- BUTTON SECTION -->


<div class="flex gap-4 mt-8">


<button
type="submit"
class="bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full flex items-center gap-2">


<% if(editExperience==null){ %>

<i class="fa-solid fa-floppy-disk"></i>
<span>Save Experience</span>

<% }else{ %>

<i class="fa-solid fa-pen"></i>
<span>Update Experience</span>

<% } %>


</button>





<%

if(editExperience!=null){

%>


<a

href="<%=request.getContextPath()%>/experienceDashboard"

class="bg-red-500 hover:bg-red-600 px-8 py-3 rounded-full">

<i class="fa-solid fa-xmark mr-2"></i>Cancel

</a>


<%

}

%>


</div>




</form>


</div>








<!-- ================= TABLE SECTION ================= -->



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<i class="fa-solid fa-list-check text-cyan-400"></i>

<span>All Experience</span>

</h2>





<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>


<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
<i class="fa-solid fa-hashtag mr-2"></i>ID
</th>

<th class="p-4">
<i class="fa-solid fa-building mr-2"></i>Company
</th>

<th class="p-4">
<i class="fa-solid fa-user-tie mr-2"></i>Role
</th>

<th class="p-4">
<i class="fa-solid fa-calendar-days mr-2"></i>Duration
</th>

<th class="p-4">
<i class="fa-solid fa-align-left mr-2"></i>Description
</th>

<th class="p-4">
<i class="fa-solid fa-gears mr-2"></i>Action
</th>

</tr>


</thead>





<tbody>



<%

if(experienceList!=null && !experienceList.isEmpty()){


for(Experience e : experienceList){


%>




<tr class="border-b border-slate-800">


<td class="p-4">
<%=e.getId()%>
</td>



<td class="p-4">
<%=e.getCompanyName()%>
</td>



<td class="p-4">
<%=e.getJobRole()%>
</td>



<td class="p-4">

<%=e.getStartDate()%> -
<%=e.getEndDate()%>

</td>



<td class="p-4 max-w-xs">

<%=e.getDescription()%>

</td>




<td class="p-4 whitespace-nowrap">


<a
href="<%=request.getContextPath()%>/editExperience?id=<%=e.getId()%>"
class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

<i class="fa-solid fa-pen-to-square"></i>

<span>Edit</span>

</a>





<a
href="<%=request.getContextPath()%>/deleteExperience?id=<%=e.getId()%>"
onclick="return confirm('Delete this experience?')"
class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg ml-2 inline-flex items-center gap-2">

<i class="fa-solid fa-trash"></i>

<span>Delete</span>

</a>



</td>


</tr>




<%

}

}else{

%>



<tr>

<td colspan="6"

class="text-center py-8 text-slate-400">

<i class="fa-solid fa-circle-info text-2xl mb-2"></i>

<br>

No Experience Found

</td>

</tr>



<%

}

%>



</tbody>


</table>


</div>


</div>