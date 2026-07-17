<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Skill"%>

<%
List<Skill> skillList = (List<Skill>) request.getAttribute("skillList");
%>

<section id="skills" class="py-20 bg-slate-950">

    <div class="max-w-7xl mx-auto px-6">

        <!-- Heading -->

        <div class="text-center mb-12">

            <p class="text-cyan-400 uppercase tracking-[4px] font-semibold">
                My Skills
            </p>

            <h2 class="text-4xl font-bold mt-3">
                Tech <span class="text-cyan-400">Stack</span>
            </h2>

            <div class="w-20 h-1 bg-cyan-400 mx-auto rounded-full mt-4"></div>

        </div>

        <!-- Skills -->

        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">

        <%
        if(skillList != null && !skillList.isEmpty()){

            for(Skill s : skillList){
        %>

            <div
            class="group bg-slate-900 border border-slate-800 rounded-xl p-4
                   hover:border-cyan-400 hover:-translate-y-1
                   hover:shadow-lg hover:shadow-cyan-500/20
                   transition-all duration-300">

                <!-- Top -->

                <div class="flex items-center justify-between">

                    <h3 class="font-semibold text-white group-hover:text-cyan-400 transition">

                        <%=s.getSkillName()%>

                    </h3>

                    <div
                    class="w-10 h-10 rounded-full
                           bg-cyan-500/10
                           border border-cyan-400
                           flex items-center justify-center
                           text-xs font-bold text-cyan-400">

                        <%=s.getSkillLevel()%>%

                    </div>

                </div>

                <!-- Bottom -->

                <div class="mt-4">

                    <div class="h-1.5 bg-slate-700 rounded-full overflow-hidden">

                        <div
                        class="h-full rounded-full bg-gradient-to-r from-cyan-400 via-sky-400 to-blue-500"
                        style="width:<%=s.getSkillLevel()%>%">

                        </div>

                    </div>

                </div>

            </div>

        <%
            }

        }else{
        %>

            <div class="col-span-4 text-center py-8 text-slate-500 text-lg">

                No Skills Available

            </div>

        <%
        }
        %>

        </div>

    </div>

</section>