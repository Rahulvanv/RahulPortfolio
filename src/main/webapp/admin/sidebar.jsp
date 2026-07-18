<!-- ================= Sidebar ================= -->

<aside class="fixed left-0 top-0 h-screen w-72 bg-slate-900 border-r border-slate-700 p-6 overflow-y-auto">

    <!-- Logo -->

    <div class="mb-10">

        <h1 class="text-3xl font-bold text-white">
            Rahul<span class="text-cyan-400">.</span>
        </h1>

        <p class="text-slate-400 text-sm mt-2">
            Portfolio Admin Panel
        </p>

    </div>



    <!-- Navigation -->

    <nav class="space-y-2">

        <!-- Dashboard -->

        <a href="<%=request.getContextPath()%>/adminDashboard"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-house text-lg w-6 text-center"></i>

            <span>Dashboard</span>

        </a>



        <!-- Projects -->

        <a href="<%=request.getContextPath()%>/projectDashboard"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-folder-open text-lg w-6 text-center"></i>

            <span>Projects</span>

        </a>



        <!-- Skills -->
	
        <a href="<%=request.getContextPath()%>/adminDashboard?pageName=skill"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-screwdriver-wrench text-lg w-6 text-center"></i>

            <span>Skills</span>

        </a>



        <!-- Education -->

        <a href="<%=request.getContextPath()%>/adminDashboard?pageName=education"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-graduation-cap text-lg w-6 text-center"></i>

            <span>Education</span>

        </a>



        <!-- Experience -->

        <a href="<%=request.getContextPath()%>/experienceDashboard"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-briefcase text-lg w-6 text-center"></i>

            <span>Experience</span>

        </a>



        <!-- Certificates -->

        <a href="<%=request.getContextPath()%>/adminDashboard?pageName=certificate"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-award text-lg w-6 text-center"></i>

            <span>Certificates</span>

        </a>



        <!-- Messages -->

        <a href="<%=request.getContextPath()%>/messageDashboard"
        
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-envelope text-lg w-6 text-center"></i>

            <span>Messages</span>

        </a>



        <!-- Profile -->

        <a href="<%=request.getContextPath()%>/adminDashboard?pageName=profile"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-slate-300 hover:bg-slate-800 hover:text-cyan-400
                  transition-all duration-300">

            <i class="fa-solid fa-user text-lg w-6 text-center"></i>

            <span>Profile</span>

        </a>



        <!-- Settings -->
<a href="<%=request.getContextPath()%>/settingsDashboard"
   class="flex items-center gap-4 px-4 py-3 rounded-xl
          text-slate-300 hover:bg-slate-800 hover:text-cyan-400 transition-all duration-300">

    <i class="fa-solid fa-gear text-lg w-6 text-center"></i>

    <span>Settings</span>

</a>


        <hr class="border-slate-700 my-5">



        <!-- Logout -->

        <a href="<%=request.getContextPath()%>/logout"
           class="flex items-center gap-4 px-4 py-3 rounded-xl
                  text-red-400 hover:bg-red-500 hover:text-white
                  transition-all duration-300">

            <i class="fa-solid fa-right-from-bracket text-lg w-6 text-center"></i>

            <span>Logout</span>

        </a>

    </nav>

</aside>