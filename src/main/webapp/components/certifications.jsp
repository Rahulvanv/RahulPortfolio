<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Certificate"%>

<%
List<Certificate> certificateList =
(List<Certificate>)request.getAttribute("certificateList");
%>

<section id="certificates" class="py-20 bg-slate-950">

    <div class="max-w-7xl mx-auto px-6">

        <!-- Heading -->

        <div class="text-center mb-14">

            <p class="text-cyan-400 uppercase tracking-[4px] font-semibold">
                Achievements
            </p>

            <h2 class="text-4xl md:text-5xl font-bold mt-3">
                My <span class="text-cyan-400">Certificates</span>
            </h2>

            <div class="w-20 h-1 bg-cyan-400 rounded-full mx-auto mt-4"></div>

            

        </div>

        <!-- Cards -->

        <div class="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">

        <%
        if(certificateList != null && !certificateList.isEmpty()){

            for(Certificate c : certificateList){
        %>

            <div class="group bg-slate-900 border border-slate-800 rounded-2xl p-6 hover:border-cyan-400 hover:-translate-y-2 hover:shadow-[0_0_25px_rgba(34,211,238,0.2)] transition-all duration-300">

                <!-- Icon -->

                <div class="w-14 h-14 rounded-xl bg-cyan-500/10 border border-cyan-500/20 flex items-center justify-center text-cyan-400 text-2xl mb-5">

                    <i class="fas fa-award"></i>

                </div>

                <!-- Title -->

                <h3 class="text-xl font-bold text-white group-hover:text-cyan-400 transition">

                    <%=c.getTitle()%>

                </h3>

                <!-- Issuer -->

                <p class="text-cyan-400 mt-2 flex items-center gap-2">

                    <i class="fas fa-building"></i>

                    <%=c.getIssuer()%>

                </p>

                <!-- Date -->

                <p class="text-slate-400 text-sm mt-2 flex items-center gap-2">

                    <i class="far fa-calendar-alt"></i>

                    <%=c.getIssueDate()%>

                </p>

                <!-- Description -->

                <p class="text-slate-300 mt-4 text-sm leading-6 line-clamp-4">

                    <%=c.getDescription()%>

                </p>

                <!-- Button -->

               <%
if(c.getCertificateFile()!=null &&
   !c.getCertificateFile().trim().isEmpty()){
%>

<a href="uploads/certificates/<%=c.getCertificateFile()%>"
   target="_blank"
   class="mt-6 inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-cyan-500 hover:bg-cyan-400 text-black font-semibold transition">

    <i class="fas fa-file-alt"></i>

    View Certificate

</a>

<%
}
%>
            </div>

        <%
            }

        }else{
        %>

            <div class="col-span-3 text-center py-14">

                <i class="fas fa-award text-6xl text-slate-700 mb-5"></i>

                <h3 class="text-3xl font-bold text-white">

                    No Certificates Added

                </h3>

                <p class="text-slate-400 mt-3">

                    Your certifications will appear here.

                </p>

            </div>

        <%
        }
        %>

        </div>

    </div>

</section>