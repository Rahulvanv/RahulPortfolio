<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Education"%>

<%



Education editEducation =
(Education)request.getAttribute("editEducation");

%>


<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-2">

    <i class="fa-solid fa-graduation-cap text-cyan-400"></i>

    Manage

    <span class="text-cyan-400">Education</span>

</h1>

    <p class="text-slate-400 mt-2">
        Add, update and manage your education details.
    </p>

</div>



<!-- ================= FORM SECTION ================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-10">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<% if(editEducation==null){ %>

<i class="fa-solid fa-circle-plus text-cyan-400"></i>

<span>Add New Education</span>

<% }else{ %>

<i class="fa-solid fa-pen-to-square text-yellow-400"></i>

<span>Edit Education</span>

<% } %>

</h2>



<form 
action="<%=request.getContextPath()%>/<%=editEducation==null?"addEducation":"updateEducation"%>"
method="post">


<% if(editEducation!=null){ %>

<input 
type="hidden"
name="id"
value="<%=editEducation.getId()%>">

<% } %>



<div class="grid md:grid-cols-2 gap-6">


<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-user-graduate text-cyan-400 mr-2"></i>

Degree

</label>

<input
type="text"
name="degree"
required
value="<%=editEducation!=null?editEducation.getDegree():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>



<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-school text-cyan-400 mr-2"></i>

Institute

</label>

<input
type="text"
name="institute"
required
value="<%=editEducation!=null?editEducation.getInstitute():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-building-columns text-cyan-400 mr-2"></i>

University

</label>

<input
type="text"
name="university"
value="<%=editEducation!=null?editEducation.getUniversity():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-percent text-cyan-400 mr-2"></i>

Percentage / CGPA

</label>

<input
type="text"
name="percentage"
value="<%=editEducation!=null?editEducation.getPercentage():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-calendar-days text-cyan-400 mr-2"></i>

Start Year

</label>

<input
type="text"
name="startYear"
value="<%=editEducation!=null?editEducation.getStartYear():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-calendar-check text-cyan-400 mr-2"></i>

End Year

</label>

<input
type="text"
name="endYear"
value="<%=editEducation!=null?editEducation.getEndYear():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>


</div>



<button
type="submit"
class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full flex items-center gap-2">

<% if(editEducation==null){ %>

<i class="fa-solid fa-floppy-disk"></i>

<span>Save Education</span>

<% }else{ %>

<i class="fa-solid fa-pen"></i>

<span>Update Education</span>

<% } %>

</button>



</form>


</div>





<!-- ================= TABLE SECTION ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<i class="fa-solid fa-list-check text-cyan-400"></i>

<span>All Education</span>

</h2>



<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>

<tr class="border-b border-slate-700 text-cyan-400">

<th class="p-4">
<i class="fa-solid fa-hashtag mr-2"></i>ID
</th>

<th class="p-4">
<i class="fa-solid fa-user-graduate mr-2"></i>Degree
</th>

<th class="p-4">
<i class="fa-solid fa-school mr-2"></i>Institute
</th>

<th class="p-4">
<i class="fa-solid fa-building-columns mr-2"></i>University
</th>

<th class="p-4">
<i class="fa-solid fa-calendar-days mr-2"></i>Duration
</th>

<th class="p-4">
<i class="fa-solid fa-percent mr-2"></i>Percentage
</th>

<th class="p-4">
<i class="fa-solid fa-gears mr-2"></i>Action
</th>

</tr>

</thead>


<%

if(educationList!=null && !educationList.isEmpty()){


for(Education e : educationList){

%>


<tbody>







<tr class="border-b border-slate-800">


<td class="p-4">
<%=e.getId()%>
</td>



<td class="p-4">
<%=e.getDegree()%>
</td>



<td class="p-4">
<%=e.getInstitute()%>
</td>



<td class="p-4">
<%=e.getUniversity()%>
</td>



<td class="p-4">

<%=e.getStartYear()%> -
<%=e.getEndYear()%>

</td>



<td class="p-4">
<%=e.getPercentage()%>
</td>




<td class="p-4">

    <div class="flex items-center gap-2 whitespace-nowrap">

        <a
        href="<%=request.getContextPath()%>/editEducation?id=<%=e.getId()%>"
        class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

            <i class="fa-solid fa-pen-to-square"></i>

            <span>Edit</span>

        </a>

        <a
        href="<%=request.getContextPath()%>/deleteEducation?id=<%=e.getId()%>"
        onclick="return confirm('Delete this education record?')"
        class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

            <i class="fa-solid fa-trash"></i>

            <span>Delete</span>

        </a>

    </div>

</td>

</tr>



<%

}

}else{

%>



<tr>

<td colspan="7"
class="text-center py-8 text-slate-400">

<i class="fa-solid fa-circle-info text-2xl mb-2"></i>

<br>

No Education Found

</td>

</tr>



<%

}

%>



</tbody>


</table>


</div>


</div>