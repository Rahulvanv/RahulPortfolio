<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Project"%>

<%

List<Project> projectList =
(List<Project>)request.getAttribute("projectList");

Project editProject =
(Project)request.getAttribute("editProject");

%>

<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-3">

        <i class="fa-solid fa-diagram-project text-cyan-400"></i>

        Manage

        <span class="text-cyan-400">
            Projects
        </span>

    </h1>

    <p class="text-slate-400 mt-2">

        Add, update and manage your portfolio projects.

    </p>

</div>



<!-- ================= FORM SECTION ================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-10">

<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<% if(editProject==null){ %>

<i class="fa-solid fa-circle-plus text-cyan-400"></i>

<span>Add New Project</span>

<% }else{ %>

<i class="fa-solid fa-pen-to-square text-yellow-400"></i>

<span>Edit Project</span>

<% } %>

</h2>



<form
action="<%=request.getContextPath()%>/<%=editProject==null?"addProject":"updateProject"%>"
method="post"
enctype="multipart/form-data">

<% if(editProject!=null){ %>


<input
type="hidden"
name="id"
value="<%=editProject.getId()%>">

<input
type="hidden"
name="oldImage"
value="<%=editProject.getImagePath()%>">

<% } %>



<div class="grid md:grid-cols-2 gap-6">




<!-- Project Title -->

<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-folder-open text-cyan-400 mr-2"></i>

Project Title

</label>

<input
type="text"
name="title"
required
value="<%=editProject!=null?editProject.getTitle():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<!-- Technologies -->

<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-code text-cyan-400 mr-2"></i>

Technologies

</label>

<input
type="text"
name="technologies"
required
value="<%=editProject!=null?editProject.getTechnologies():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<!-- Github -->

<div>

<label class="block mb-2 text-slate-300">

<i class="fa-brands fa-github text-cyan-400 mr-2"></i>

Github Link

</label>

<input
type="text"
name="githubLink"
value="<%=editProject!=null?editProject.getGithubLink():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<!-- Live Demo -->

<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-globe text-cyan-400 mr-2"></i>

Live Demo Link

</label>

<input
type="text"
name="liveDemoLink"
value="<%=editProject!=null?editProject.getLiveDemoLink():""%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

</div>




<!-- Image -->

<div class="md:col-span-2">

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-image text-cyan-400 mr-2"></i>

Project Image

</label>


<input

type="file"

name="projectImage"

accept="image/*"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


<%
if(editProject!=null 
&& editProject.getImagePath()!=null){
%>

<p class="text-cyan-400 mt-2">

Current Image :
<%=editProject.getImagePath()%>

</p>

<%
}
%>
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
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white resize-none"><%=editProject!=null?editProject.getDescription():""%></textarea>

</div>

</div>



<div class="flex gap-4 mt-8">

<button
type="submit"
class="bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full flex items-center gap-2">

<% if(editProject==null){ %>

<i class="fa-solid fa-floppy-disk"></i>

<span>Save Project</span>

<% }else{ %>

<i class="fa-solid fa-pen"></i>

<span>Update Project</span>

<% } %>

</button>

<% if(editProject!=null){ %>

<a
href="<%=request.getContextPath()%>/adminDashboard?pageName=project"
class="bg-red-500 hover:bg-red-600 px-8 py-3 rounded-full flex items-center gap-2">

<i class="fa-solid fa-xmark"></i>

<span>Cancel</span>

</a>

<% } %>

</div>

</form>

</div>

<!-- ================= PROJECT LIST ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<i class="fa-solid fa-list text-cyan-400"></i>

All Projects

</h2>



<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>

<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
ID
</th>


<th class="p-4">
Image
</th>


<th class="p-4">
Title
</th>


<th class="p-4">
Technology
</th>


<th class="p-4">
Action
</th>


</tr>

</thead>



<tbody>



<%
if(projectList!=null && !projectList.isEmpty()){


for(Project p:projectList){

%>



<tr class="border-b border-slate-800">


<td class="p-4">
<%=p.getId()%>
</td>



<td class="p-4">

<img

src="<%=request.getContextPath()%>/<%=p.getImagePath()%>"

class="w-20 h-20 rounded-xl object-cover">

</td>




<td class="p-4">

<%=p.getTitle()%>

</td>



<td class="p-4">

<%=p.getTechnologies()%>

</td>



<td class="p-4">

    <div class="flex items-center gap-3">

        <a
            href="<%=request.getContextPath()%>/editProject?id=<%=p.getId()%>"
            class="bg-green-500 hover:bg-green-600 text-white px-4 py-2 rounded-lg flex items-center gap-2 transition">

            <i class="fa-solid fa-pen"></i>
            <span>Edit</span>

        </a>

        <a
            href="<%=request.getContextPath()%>/deleteProject?id=<%=p.getId()%>"
            onclick="return confirm('Delete Project?')"
            class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg flex items-center gap-2 transition">

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

<td colspan="5"

class="text-center p-6 text-slate-400">

No Projects Found

</td>

</tr>


<%

}

%>



</tbody>


</table>


</div>


</div>