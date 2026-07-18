<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Skill"%>

<%
List<Skill> skillList = (List<Skill>) request.getAttribute("skillList");
Skill editSkill = (Skill) request.getAttribute("editSkill");
%>

<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-2">
        <i class="fa-solid fa-screwdriver-wrench text-cyan-400"></i>
        Manage <span class="text-cyan-400">Skills</span>
    </h1>

    <p class="text-slate-400 mt-2">
        Add, update and manage your technical skills.
    </p>

</div>

<!-- ================= FORM SECTION ================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-10">

    <h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

        <% if(editSkill == null){ %>

            <i class="fa-solid fa-circle-plus text-cyan-400"></i>
            <span>Add New Skill</span>

        <% } else { %>

            <i class="fa-solid fa-pen-to-square text-yellow-400"></i>
            <span>Edit Skill</span>

        <% } %>

    </h2>

    <form action="<%=request.getContextPath()%>/<%= editSkill == null ? "addSkill" : "updateSkill" %>" method="post">

        <%
        if(editSkill != null){
        %>

        <input
            type="hidden"
            name="id"
            value="<%=editSkill.getId()%>">

        <%
        }
        %>

        <div class="grid md:grid-cols-2 gap-6">

            <div>

                <label class="block mb-2 text-slate-300">
                    <i class="fa-solid fa-code text-cyan-400 mr-2"></i>
                    Skill Name
                </label>

                <input
                    type="text"
                    name="skillName"
                    value="<%= editSkill != null ? editSkill.getSkillName() : "" %>"
                    required
                    class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

            </div>

            <div>

                <label class="block mb-2 text-slate-300">
                    <i class="fa-solid fa-chart-simple text-cyan-400 mr-2"></i>
                    Skill Level
                </label>

                <input
                    type="number"
                    name="skillLevel"
                    value="<%= editSkill != null ? editSkill.getSkillLevel() : "" %>"
                    min="1"
                    max="100"
                    required
                    class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

            </div>

        </div>

        <button
            type="submit"
            class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full flex items-center gap-2">

            <% if(editSkill == null){ %>

                <i class="fa-solid fa-floppy-disk"></i>
                <span>Save Skill</span>

            <% } else { %>

                <i class="fa-solid fa-pen"></i>
                <span>Update Skill</span>

            <% } %>

        </button>

    </form>

</div>

<!-- ================= TABLE SECTION ================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">

    <h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

        <i class="fa-solid fa-list-check text-cyan-400"></i>

        <span>All Skills</span>

    </h2>

    <div class="overflow-x-auto">

        <table class="w-full text-left">

            <thead>

                <tr class="border-b border-slate-700 text-cyan-400">

                    <th class="p-4">
                        <i class="fa-solid fa-hashtag mr-2"></i>ID
                    </th>

                    <th class="p-4">
                        <i class="fa-solid fa-code mr-2"></i>Skill
                    </th>

                    <th class="p-4">
                        <i class="fa-solid fa-chart-simple mr-2"></i>Level
                    </th>

                    <th class="p-4 w-56">
                        <i class="fa-solid fa-gears mr-2"></i>Action
                    </th>

                </tr>

            </thead>

            <tbody>

            <%
            if(skillList != null && !skillList.isEmpty()){

                for(Skill s : skillList){
            %>

                <tr class="border-b border-slate-800">

                    <td class="p-4">
                        <%=s.getId()%>
                    </td>

                    <td class="p-4">
                        <%=s.getSkillName()%>
                    </td>

                    <td class="p-4">

                        <div class="flex items-center gap-3">

                            <div class="w-40 bg-slate-700 rounded-full h-3">

                                <div
                                    class="bg-cyan-400 h-3 rounded-full"
                                    style="width:<%=s.getSkillLevel()%>%">

                                </div>

                            </div>

                            <span><%=s.getSkillLevel()%>%</span>

                        </div>

                    </td>

                    <td class="p-4 whitespace-nowrap">

                        <div class="flex items-center gap-2">

                            <a
                                href="<%=request.getContextPath()%>/editSkill?id=<%=s.getId()%>"
                                class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

                                <i class="fa-solid fa-pen-to-square"></i>

                                <span>Edit</span>

                            </a>

                            <a
                                href="<%=request.getContextPath()%>/deleteSkill?id=<%=s.getId()%>"
                                onclick="return confirm('Delete this skill?')"
                                class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

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

                    <td colspan="4" class="text-center py-8 text-slate-400">

                        <i class="fa-solid fa-circle-info text-3xl mb-3"></i>

                        <br>

                        No Skills Found

                    </td>

                </tr>

            <%
            }
            %>

            </tbody>

        </table>

    </div>

</div>