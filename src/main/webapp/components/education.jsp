
<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Education"%>

<%
List<Education> educationList =
(List<Education>)request.getAttribute("educationList");
%>

<section id="education" class="py-20 bg-slate-900">

    <div class="max-w-7xl mx-auto px-6">

        <!-- Heading -->

        <div class="text-center mb-14">

            <p class="text-cyan-400 uppercase tracking-[5px] font-semibold">
                Education
            </p>

            <h2 class="text-4xl md:text-5xl font-bold mt-3">
                Academic Journey
            </h2>

            <div class="w-20 h-1 bg-cyan-400 rounded-full mx-auto mt-4"></div>

           

        </div>

        <!-- Cards -->

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">

        <%
        if(educationList != null && !educationList.isEmpty()){

            for(Education e : educationList){
        %>

            <div class="group relative overflow-hidden
                        bg-slate-800/70 backdrop-blur-lg
                        border border-slate-700
                        rounded-2xl
                        p-5
                        hover:border-cyan-400
                        hover:-translate-y-1
                        hover:shadow-[0_0_20px_rgba(34,211,238,0.2)]
                        transition-all duration-300">

                <!-- Top Gradient -->

                <div class="absolute top-0 left-0 w-full h-1
                            bg-gradient-to-r
                            from-cyan-400
                            via-sky-500
                            to-cyan-400">
                </div>

                <!-- Icon -->

                <div class="w-11 h-11 rounded-xl
                            bg-cyan-500/10
                            border border-cyan-400
                            flex items-center justify-center
                            mb-4
                            group-hover:bg-cyan-500
                            transition">

                    <i class="fas fa-graduation-cap text-lg text-cyan-400 group-hover:text-black"></i>

                </div>

                <!-- Degree -->

                <h3 class="text-xl font-bold text-white group-hover:text-cyan-400 transition">

                    <%=e.getDegree()%>

                </h3>

                <!-- Institute -->

                <div class="flex items-center mt-3 text-slate-300">

                    <i class="fas fa-school text-cyan-400 mr-2"></i>

                    <span class="text-sm">

                        <%=e.getInstitute()%>

                    </span>

                </div>

                <!-- University -->

                <div class="flex items-center mt-2 text-slate-400">

                    <i class="fas fa-university text-cyan-400 mr-2"></i>

                    <span class="text-sm">

                        <%=e.getUniversity()%>

                    </span>

                </div>

                <!-- Bottom Badges -->

                <div class="flex justify-between items-center mt-5 flex-wrap gap-2">

                    <span class="px-3 py-1 rounded-full
                                 bg-cyan-500/10
                                 text-cyan-300
                                 text-xs">

                        <i class="far fa-calendar-alt mr-1"></i>

                        <%=e.getStartYear()%> - <%=e.getEndYear()%>

                    </span>

                    <span class="px-3 py-1 rounded-full
                                 bg-green-500/10
                                 text-green-400
                                 text-xs font-semibold">

                        <i class="fas fa-award mr-1"></i>

                        <%=e.getPercentage()%>

                    </span>

                </div>

            </div>

        <%
            }

        }else{
        %>

            <div class="col-span-3 text-center py-12">

                <i class="fas fa-user-graduate text-5xl text-slate-700 mb-4"></i>

                <h3 class="text-2xl font-bold text-white">

                    No Education Added

                </h3>

                <p class="text-slate-400 mt-2">

                    Education details will appear here.

                </p>

            </div>

        <%
        }
        %>

        </div>

    </div>

</section>

