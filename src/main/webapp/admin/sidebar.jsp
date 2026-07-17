<!-- Sidebar -->

<aside class="fixed left-0 top-0 h-screen w-72 bg-slate-900 border-r border-slate-700 p-6">


<div class="mb-10">

<h1 class="text-3xl font-bold text-white">
Rahul<span class="text-cyan-400">.</span>
</h1>

<p class="text-slate-400 text-sm mt-2">
Portfolio Admin Panel
</p>

</div>




<nav class="space-y-3">


<a href="<%=request.getContextPath()%>/adminDashboard"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

🏠 Dashboard

</a>



<a href="<%=request.getContextPath()%>/adminDashboard?page=project"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

📁 Projects

</a>




<a href="<%=request.getContextPath()%>/adminDashboard?page=skill"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

🛠 Skills

</a>




<a href="<%=request.getContextPath()%>/adminDashboard?page=education"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

🎓 Education

</a>




<a href="<%=request.getContextPath()%>/experienceDashboard"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

💼 Experience

</a>




<a href="<%=request.getContextPath()%>/adminDashboard?pageName=certificate"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

🏆 Certificates

</a>




<a href="<%=request.getContextPath()%>/messageDashboard"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

📩 Messages

</a>




<a href="adminDashboard?pageName=profile"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

👤 Profile

</a>




<a href="#"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition">

⚙ Settings

</a>



<hr class="border-slate-700 my-5">



<a href="<%=request.getContextPath()%>/logout"
class="flex items-center gap-3 px-4 py-3 rounded-xl
text-red-400 hover:bg-red-500 hover:text-white transition">

🚪 Logout

</a>



</nav>


</aside>