<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Education"%>

<%



Education editEducation =
(Education)request.getAttribute("editEducation");

%>


<div class="mb-10">

    <h1 class="text-4xl font-bold">
        Manage <span class="text-cyan-400">Education</span>
    </h1>

    <p class="text-slate-400 mt-2">
        Add, update and manage your education details.
    </p>

</div>



<!-- ================= FORM SECTION ================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-10">


<h2 class="text-2xl font-bold mb-6">

<%=editEducation==null?"➕ Add New Education":"✏ Edit Education"%>

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
class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full">

<%=editEducation==null?"Save Education":"Update Education"%>

</button>



</form>


</div>





<!-- ================= TABLE SECTION ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6">
All Education
</h2>



<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>

<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
ID
</th>


<th class="p-4">
Degree
</th>


<th class="p-4">
Institute
</th>


<th class="p-4">
University
</th>


<th class="p-4">
Duration
</th>


<th class="p-4">
Percentage
</th>


<th class="p-4">
Action
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


<a
href="<%=request.getContextPath()%>/editEducation?id=<%=e.getId()%>"
class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg">

Edit

</a>




<a
href="<%=request.getContextPath()%>/deleteEducation?id=<%=e.getId()%>"
onclick="return confirm('Delete this education record?')"
class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg ml-2">

Delete

</a>


</td>


</tr>



<%

}

}else{

%>



<tr>

<td colspan="7"
class="text-center py-8 text-slate-400">

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