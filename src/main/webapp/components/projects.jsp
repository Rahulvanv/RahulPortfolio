<%@ page import="java.util.List" %>
<%@ page import="com.rahulportfolio.model.Project" %>

<%
List<Project> projectList = (List<Project>) request.getAttribute("projectList");
%>

<section id="projects" class="py-24 bg-slate-900">

    <div class="max-w-7xl mx-auto px-6">

        <!-- Section Heading -->
        <div class="text-center mb-16">

            <p class="text-cyan-400 uppercase tracking-[4px] font-semibold">
                My Projects
            </p>

            <h2 class="text-4xl md:text-5xl font-bold mt-4">
                Featured Projects
            </h2>

            <div class="w-24 h-1 bg-cyan-400 mx-auto mt-5 rounded-full"></div>

            <p class="text-slate-400 mt-6 max-w-2xl mx-auto">
                Here are some of my Java Full Stack projects developed using
                Java, JSP, Servlet, JDBC and MySQL.
            </p>

        </div>

        <!-- Project Grid -->
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">

        <%
        if(projectList != null && !projectList.isEmpty()){

            for(Project project : projectList){
        %>

            <!-- Project Card -->
            <div class="bg-slate-800 rounded-2xl overflow-hidden border border-slate-700 hover:border-cyan-400 transition duration-300 hover:shadow-xl">

                <img src="images/projects/<%= project.getImagePath() %>"
                     alt="<%= project.getTitle() %>"
                     class="w-full h-52 object-cover">

                <div class="p-6">

                    <h3 class="text-2xl font-bold mb-3 text-white">
                        <%= project.getTitle() %>
                    </h3>

                    <p class="text-slate-400 mb-5">
                        <%= project.getDescription() %>
                    </p>

                    <div class="mb-5">
                        <span class="bg-cyan-500/20 text-cyan-300 px-3 py-1 rounded-full text-sm">
                            <%= project.getTechnologies() %>
                        </span>
                    </div>

                    <div class="flex gap-3">

                        <a href="<%= project.getGithubLink() %>"
                           target="_blank"
                           class="flex-1 text-center bg-cyan-500 hover:bg-cyan-600 text-white py-2 rounded-lg font-semibold">

                            GitHub

                        </a>

                        <a href="<%= project.getLiveDemoLink() %>"
                           target="_blank"
                           class="flex-1 text-center border border-cyan-400 hover:bg-cyan-400 hover:text-black py-2 rounded-lg font-semibold">

                            Live Demo

                        </a>

                    </div>

                </div>

            </div>

        <%
            }

        } else {
        %>

            <div class="col-span-3 text-center">

                <h2 class="text-3xl text-white font-bold">
                    No Projects Available
                </h2>

            </div>

        <%
        }
        %>

        </div>

    </div>

</section>