<%@ page import="java.util.List" %>
<%@ page import="com.rahulportfolio.model.Project" %>

<%
List<Project> projectList = (List<Project>) request.getAttribute("projectList");
%>

<section id="projects" class="py-24 bg-slate-900">

    <div class="max-w-7xl mx-auto px-6">

        <!-- ================= Heading ================= -->

        <div class="text-center mb-16">

            <p class="text-cyan-400 uppercase tracking-[5px] font-semibold">
                Portfolio
            </p>

            <h2 class="text-4xl md:text-5xl font-bold mt-4">
                Featured Projects
            </h2>

            <div class="w-24 h-1 bg-cyan-400 rounded-full mx-auto mt-5"></div>

           

        </div>

        <!-- ================= Projects Grid ================= -->

        <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-8">

        <%
        if(projectList != null && !projectList.isEmpty()){

            for(Project project : projectList){
        %>

        <!-- Project Card -->

        <div class="group bg-slate-800/80 backdrop-blur-lg
                    rounded-3xl overflow-hidden
                    border border-slate-700
                    hover:border-cyan-400
                    hover:-translate-y-2
                    hover:shadow-[0_0_30px_rgba(34,211,238,0.25)]
                    transition-all duration-500">

            <!-- Image -->

            <div class="relative overflow-hidden">

                <img
                src="images/projects/<%=project.getImagePath()%>"
                alt="<%=project.getTitle()%>"
                class="w-full h-56 object-cover
                       group-hover:scale-110
                       transition duration-700">

                <!-- Overlay -->

                <div class="absolute inset-0 bg-gradient-to-t from-slate-900 via-transparent to-transparent"></div>

                <!-- Badge -->

                <span class="absolute top-4 left-4
                             bg-cyan-500 text-black
                             px-3 py-1 rounded-full
                             text-xs font-bold">

                    Featured

                </span>

            </div>

            <!-- Content -->

            <div class="p-6">

                <h3 class="text-2xl font-bold text-white group-hover:text-cyan-400 transition">

                    <%=project.getTitle()%>

                </h3>

                <p class="text-slate-400 mt-4 leading-7 h-24 overflow-hidden">

                    <%=project.getDescription()%>

                </p>

                <!-- Technologies -->

                <div class="flex flex-wrap gap-2 mt-5">

                    <%
                    String[] techs = project.getTechnologies().split(",");

                    for(String tech : techs){
                    %>

                    <span
                    class="px-3 py-1 rounded-full
                           text-xs
                           bg-cyan-500/10
                           text-cyan-300
                           border border-cyan-500/20">

                        <%=tech.trim()%>

                    </span>

                    <%
                    }
                    %>

                </div>

                <!-- Buttons -->

                <div class="flex gap-3 mt-7">

                    <a
                    href="<%=project.getGithubLink()%>"
                    target="_blank"
                    class="flex-1 flex items-center justify-center gap-2
                           py-3 rounded-xl
                           bg-slate-700
                           hover:bg-slate-600
                           transition">

                        <i class="fab fa-github text-lg"></i>

                        GitHub

                    </a>

                    <a
                    href="<%=project.getLiveDemoLink()%>"
                    target="_blank"
                    class="flex-1 flex items-center justify-center gap-2
                           py-3 rounded-xl
                           bg-cyan-500
                           hover:bg-cyan-400
                           text-black font-semibold
                           transition">

                        <i class="fas fa-arrow-up-right-from-square"></i>

                        Live Demo

                    </a>
                    
                    
                    

                </div>

            </div>

        </div>

        <%
            }

        }else{
        %>

        <div class="col-span-3 text-center py-16">

            <i class="fas fa-folder-open text-6xl text-slate-600 mb-5"></i>

            <h2 class="text-3xl font-bold text-white">
                No Projects Available
            </h2>

            <p class="text-slate-400 mt-3">
                Projects will appear here once you add them from the admin panel.
            </p>

        </div>

        <%
        }
        %>

        </div>

    </div>

</section>