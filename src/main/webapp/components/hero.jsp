<%@ page import="com.rahulportfolio.model.Profile" %>

<%
Profile profile = (Profile) request.getAttribute("profile");
%>

<section id="home"
class="relative min-h-screen bg-slate-950 overflow-hidden">

<!-- Background Glow -->

<div class="absolute top-0 left-0 w-96 h-96 bg-cyan-500/10 blur-[140px] rounded-full"></div>

<div class="absolute bottom-0 right-0 w-[450px] h-[450px] bg-cyan-400/10 blur-[160px] rounded-full"></div>

<div class="relative max-w-7xl mx-auto px-6 pt-0 pb-16">

<div class="grid lg:grid-cols-2 gap-16 items-center">

<div>

<p class="text-cyan-400 uppercase tracking-[5px] font-semibold">

Hello, I'm

</p>

<h1 class="text-6xl lg:text-7xl font-black mt-3 leading-tight">

<%=profile.getFullName()%>

</h1>

<h2 class="text-3xl mt-4 text-slate-300 font-semibold">

<%=profile.getProfession()%>

</h2>



<div class="flex gap-5 mt-10">

<a href="#projects"
class="px-8 py-4 rounded-xl bg-cyan-500 hover:bg-cyan-400 text-black font-semibold transition">

View Projects

</a>

<a href="uploads/<%=profile.getResume()%>"
target="_blank"
class="px-8 py-4 rounded-xl border border-cyan-400 hover:bg-cyan-400 hover:text-black transition">

Resume

</a>

</div>

<!-- Contact Information -->

<div class="mt-12">

    <div class="grid sm:grid-cols-2 gap-4 max-w-2xl">

        <!-- Email -->

        <div class="flex items-center gap-4 bg-slate-900 border border-slate-800 rounded-xl p-4 hover:border-cyan-400 transition">

            <div class="w-12 h-12 rounded-full bg-cyan-500/10 flex items-center justify-center">

                <i class="fas fa-envelope text-cyan-400 text-xl"></i>

            </div>

            <div>

                <p class="text-slate-400 text-sm">Email</p>

                <p class="text-white text-sm break-all">

                    <%=profile.getEmail()%>

                </p>

            </div>

        </div>



        <!-- Phone -->

        <div class="flex items-center gap-4 bg-slate-900 border border-slate-800 rounded-xl p-4 hover:border-cyan-400 transition">

            <div class="w-12 h-12 rounded-full bg-cyan-500/10 flex items-center justify-center">

                <i class="fas fa-phone text-cyan-400 text-xl"></i>

            </div>

            <div>

                <p class="text-slate-400 text-sm">Phone</p>

                <p class="text-white">

                    <%=profile.getPhone()%>

                </p>

            </div>

        </div>



        <!-- Location -->

        <div class="flex items-center gap-4 bg-slate-900 border border-slate-800 rounded-xl p-4 hover:border-cyan-400 transition">

            <div class="w-12 h-12 rounded-full bg-cyan-500/10 flex items-center justify-center">

                <i class="fas fa-location-dot text-cyan-400 text-xl"></i>

            </div>

            <div>

                <p class="text-slate-400 text-sm">Location</p>

                <p class="text-white">

                    <%=profile.getCity()%>, <%=profile.getState()%>

                </p>

            </div>

        </div>



        <!-- Experience -->

        <div class="flex items-center gap-4 bg-slate-900 border border-slate-800 rounded-xl p-4 hover:border-cyan-400 transition">

            <div class="w-12 h-12 rounded-full bg-cyan-500/10 flex items-center justify-center">

                <i class="fas fa-briefcase text-cyan-400 text-xl"></i>

            </div>

            <div>

                <p class="text-slate-400 text-sm">Experience</p>

                <p class="text-white">

                    <%=profile.getExperience()%>

                </p>

            </div>

        </div>

    </div>

</div>
</div>

<div class="flex justify-center">

<div class="relative">

<div class="absolute inset-0 rounded-full bg-cyan-500 blur-3xl opacity-30 animate-pulse"></div>

<img
src="images/profile/<%=profile.getPhoto()%>"
alt="<%=profile.getFullName()%>"
class="relative w-80 h-80 lg:w-[430px] lg:h-[430px]
rounded-full object-cover
border-[6px] border-cyan-400
shadow-[0_0_70px_rgba(34,211,238,0.4)]">

</div>

</div>

</div>

</div>



