<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Experience"%>


<%

List<Experience> experienceList =
(List<Experience>)request.getAttribute("experienceList");


Experience editExperience =
(Experience)request.getAttribute("editExperience");

%>



<div class="mb-10">

    <h1 class="text-4xl font-bold">
        Manage <span class="text-cyan-400">Experience</span>
    </h1>

    <p class="text-slate-400 mt-2">
        Add, update and manage your work experience.
    </p>

</div>




<!-- ================= FORM SECTION ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-12">


<h2 class="text-2xl font-bold mb-8">

<%=editExperience==null?
"➕ Add New Experience":
"✏ Edit Experience"%>

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

class="bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full">


<%=editExperience==null?
"Save Experience":
"Update Experience"%>


</button>





<%

if(editExperience!=null){

%>


<a

href="<%=request.getContextPath()%>/experienceDashboard"

class="bg-red-500 hover:bg-red-600 px-8 py-3 rounded-full">

Cancel

</a>


<%

}

%>


</div>




</form>


</div>








<!-- ================= TABLE SECTION ================= -->



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6">
All Experience
</h2>





<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>


<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
ID
</th>


<th class="p-4">
Company
</th>


<th class="p-4">
Role
</th>


<th class="p-4">
Duration
</th>


<th class="p-4">
Description
</th>


<th class="p-4">
Action
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

class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg">

Edit

</a>





<a

href="<%=request.getContextPath()%>/deleteExperience?id=<%=e.getId()%>"

onclick="return confirm('Delete this experience?')"

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

<td colspan="6"

class="text-center py-8 text-slate-400">

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