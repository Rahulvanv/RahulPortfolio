<%@ page import="com.rahulportfolio.model.Profile" %>
<%@ page import="com.rahulportfolio.model.Settings" %>

<%
Profile profile = (Profile)request.getAttribute("profile");

Settings settings =
(Settings)request.getAttribute("settings");
%>

<footer class="bg-slate-950 border-t border-slate-800 relative overflow-hidden">

    <!-- Background Glow -->
    <div class="absolute top-0 left-1/2 -translate-x-1/2 w-96 h-96 bg-cyan-500/10 blur-[120px] rounded-full"></div>

    <div class="relative max-w-7xl mx-auto px-6 py-14">

        <div class="grid md:grid-cols-3 gap-12">

            <!-- ================= Left ================= -->

            <div>

                <h2 class="text-4xl font-bold text-cyan-400">
                    <%=profile.getFullName()%>
                </h2>

                <p class="text-slate-400 mt-5 leading-8">
                    <%=profile.getTagline()%>
                </p>

                <!-- Social Icons -->

                <div class="flex gap-4 mt-8 flex-wrap">

                    <% if(profile.getGithub()!=null && !profile.getGithub().trim().isEmpty()){ %>

                    <a href="<%=profile.getGithub()%>"
                       target="_blank"
                       class="w-11 h-11 rounded-full bg-slate-900 border border-slate-700 flex items-center justify-center hover:bg-cyan-500 hover:text-black hover:scale-110 transition">

                        <i class="fab fa-github text-xl"></i>

                    </a>

                    <% } %>

                    <% if(profile.getLinkedin()!=null && !profile.getLinkedin().trim().isEmpty()){ %>

                    <a href="<%=profile.getLinkedin()%>"
                       target="_blank"
                       class="w-11 h-11 rounded-full bg-slate-900 border border-slate-700 flex items-center justify-center hover:bg-cyan-500 hover:text-black hover:scale-110 transition">

                        <i class="fab fa-linkedin-in text-xl"></i>

                    </a>

                    <% } %>

                    <% if(profile.getCodechef()!=null && !profile.getCodechef().trim().isEmpty()){ %>

                    <a href="<%=profile.getCodechef()%>"
                       target="_blank"
                       class="w-11 h-11 rounded-full bg-slate-900 border border-slate-700 flex items-center justify-center hover:bg-cyan-500 hover:text-black hover:scale-110 transition">

                        <i class="fab fa-instagram text-xl"></i>

                    </a>

                    <% } %>

                   <% if(profile.getLeetcode()!=null && !profile.getLeetcode().trim().isEmpty()){ %>

<a href="<%=profile.getLeetcode()%>"
   target="_blank"
   class="w-11 h-11 rounded-full bg-slate-900 border border-slate-700 flex items-center justify-center hover:bg-cyan-500 hover:scale-110 transition">

    <img src="https://cdn.simpleicons.org/leetcode"
         alt="LeetCode"
         class="w-5 h-5">

</a>

<% } %>

                </div>

            </div>

            <!-- ================= Quick Links ================= -->

            <div>

                <h3 class="text-2xl font-bold text-white mb-6">

                    Quick Links

                </h3>

                <ul class="space-y-4">

                    <li>
                        <a href="#home" class="flex items-center gap-3 text-slate-400 hover:text-cyan-400 transition">
                            <i class="fas fa-angle-right"></i> Home
                        </a>
                    </li>

                    <li>
                        <a href="#about" class="flex items-center gap-3 text-slate-400 hover:text-cyan-400 transition">
                            <i class="fas fa-angle-right"></i> About
                        </a>
                    </li>

                    <li>
                        <a href="#skills" class="flex items-center gap-3 text-slate-400 hover:text-cyan-400 transition">
                            <i class="fas fa-angle-right"></i> Skills
                        </a>
                    </li>

                    <li>
                        <a href="#projects" class="flex items-center gap-3 text-slate-400 hover:text-cyan-400 transition">
                            <i class="fas fa-angle-right"></i> Projects
                        </a>
                    </li>

                    <li>
                        <a href="#contact" class="flex items-center gap-3 text-slate-400 hover:text-cyan-400 transition">
                            <i class="fas fa-angle-right"></i> Contact
                        </a>
                    </li>

                </ul>

            </div>

            <!-- ================= Contact ================= -->

            <div>

                <h3 class="text-2xl font-bold text-white mb-6">

                    Get In Touch

                </h3>

                <div class="space-y-5">

                    <div class="flex items-center gap-4">

                        <div class="w-11 h-11 rounded-full bg-cyan-500/10 flex items-center justify-center text-cyan-400">

                            <i class="fas fa-envelope"></i>

                        </div>

                        <span class="text-slate-400 break-all">

                            <%=profile.getEmail()%>

                        </span>

                    </div>



                    <div class="flex items-center gap-4">

                        <div class="w-11 h-11 rounded-full bg-cyan-500/10 flex items-center justify-center text-cyan-400">

                            <i class="fas fa-phone"></i>

                        </div>

                        <span class="text-slate-400">

                            <%=profile.getPhone()%>

                        </span>

                    </div>



                    <div class="flex items-center gap-4">

                        <div class="w-11 h-11 rounded-full bg-cyan-500/10 flex items-center justify-center text-cyan-400">

                            <i class="fas fa-location-dot"></i>

                        </div>

                        <span class="text-slate-400">

                            <%=profile.getCity()%>,
                            <%=profile.getState()%>,
                            <%=profile.getCountry()%>

                        </span>

                    </div>

                </div>

            </div>

        </div>

        <!-- Bottom -->

        <div class="border-t border-slate-800 mt-8 pt-5 flex flex-col md:flex-row justify-between items-center gap-3">

            <p class="text-slate-500 text-center">

                 Made with &#10084;&#65039; and endless coffee. &copy; 2026
                <span class="text-cyan-400 font-semibold">

                   
                    <%=settings.getFooterText()%>. 

                </span>.
                All Rights Reserved.
                
       
            </p>
            

            <a href="#home"
               class="w-11 h-11 rounded-full bg-cyan-500 text-black flex items-center justify-center hover:scale-110 hover:shadow-[0_0_25px_rgba(34,211,238,0.6)] transition">

                <i class="fas fa-arrow-up"></i>

            </a>

        </div>

    </div>

</footer>