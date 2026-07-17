<%@ page contentType="text/html;charset=UTF-8" %>


<section class="bg-slate-900 rounded-2xl p-8">


<h2 class="text-4xl font-bold mb-10">

➕ Add 

<span class="text-cyan-400">

New Project

</span>

</h2>





<form action="<%=request.getContextPath()%>/addProject" method="post">



<label class="block mb-2 text-slate-300">
Project Title
</label>


<input 
type="text"
name="title"
required
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-5">





<label class="block mb-2 text-slate-300">
Description
</label>


<textarea
name="description"
rows="5"
required
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-5"></textarea>






<label class="block mb-2 text-slate-300">
Technologies
</label>


<input
type="text"
name="technologies"
required
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-5">






<label class="block mb-2 text-slate-300">
Github Link
</label>


<input
type="text"
name="githubLink"
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-5">






<label class="block mb-2 text-slate-300">
Live Demo Link
</label>


<input
type="text"
name="liveDemoLink"
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-5">






<label class="block mb-2 text-slate-300">
Image Path
</label>


<input
type="text"
name="imagePath"
class="w-full bg-slate-800 border border-slate-700 rounded-xl p-4 mb-8">






<button
type="submit"
class="bg-cyan-500 px-8 py-3 rounded-full font-semibold">

Save Project

</button>



<a href="admin-dashboard.jsp?page=project"
class="bg-red-500 px-8 py-3 rounded-full ml-4">

Cancel

</a>



</form>



</section>