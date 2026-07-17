<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Experience"%>

<%
List<Experience> experienceList =
(List<Experience>)request.getAttribute("experienceList");
%>

<section id="experience" class="py-20 bg-slate-950">

    <div class="max-w-4xl mx-auto px-6">

        <!-- Heading -->

        <div class="text-center mb-12">

            <p class="text-cyan-400 uppercase tracking-[4px] font-semibold">
                Career Journey
            </p>

            <h2 class="text-4xl font-bold mt-3">
                Work <span class="text-cyan-400">Experience</span>
            </h2>

            <div class="w-20 h-1 bg-cyan-400 rounded-full mx-auto mt-4"></div>

        </div>

        <!-- Timeline -->

        <div class="relative border-l-2 border-cyan-500/40 ml-6">

        <%
        if(experienceList != null && !experienceList.isEmpty()){

            for(Experience e : experienceList){
        %>

            <div class="relative mb-6 ml-8">

                <!-- Timeline Dot -->

                <div class="absolute -left-[42px] top-5 w-4 h-4 rounded-full bg-cyan-400 border-4 border-slate-950 shadow-lg shadow-cyan-400/40"></div>

                <!-- Card -->

                <div class="bg-slate-900 border border-slate-800 rounded-xl p-4 hover:border-cyan-400 hover:shadow-lg hover:shadow-cyan-500/20 transition-all duration-300">

                    <div class="flex justify-between items-start flex-wrap gap-2">

                        <div>

                            <h3 class="text-lg font-bold text-white">
                                <%=e.getJobRole()%>
                            </h3>

                            <p class="text-cyan-400 text-sm mt-1">
                                <i class="fas fa-building mr-2"></i>
                                <%=e.getCompanyName()%>
                            </p>

                        </div>

                        <span class="text-xs bg-cyan-500/10 text-cyan-300 px-3 py-1 rounded-full">

                            <i class="far fa-calendar-alt mr-1"></i>

                            <%=e.getStartDate()%> - <%=e.getEndDate()%>

                        </span>

                    </div>

                    <p class="text-slate-400 text-sm mt-3 leading-6">

                        <%=e.getDescription()%>

                    </p>

                </div>

            </div>

        <%
            }

        }else{
        %>

            <div class="text-center py-10">

                <i class="fas fa-briefcase text-5xl text-slate-700 mb-4"></i>

                <h3 class="text-2xl font-semibold text-white">

                    No Experience Added Yet

                </h3>

                <p class="text-slate-400 mt-2">

                    Your experience will appear here.

                </p>

            </div>

        <%
        }
        %>

        </div>

    </div>

</section>
