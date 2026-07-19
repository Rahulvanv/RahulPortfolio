<%@ page import="com.rahulportfolio.model.Admin" %>

<%
String username = "Admin";

Admin navbarAdmin = (Admin) session.getAttribute("admin");

if (navbarAdmin != null) {
    username = navbarAdmin.getUsername();
}


Integer navMessageCount =
(Integer)request.getAttribute("messageCount");

if(navMessageCount == null){
    navMessageCount = 0;
}
%>

<!-- ================= Admin Navbar ================= -->

<header class="h-20 bg-slate-900 border-b border-slate-700 flex items-center justify-between px-8">

    <!-- Left -->

    <div>

        <h2 class="text-2xl font-bold text-white">
            Admin Dashboard
        </h2>

        <p class="text-slate-400 text-sm">
            Manage your portfolio website
        </p>

    </div>



    <!-- Right -->

    <div class="flex items-center gap-6">

        <!-- Notification -->

        <button
            class="relative w-11 h-11 rounded-full bg-slate-800
                   hover:bg-cyan-500 hover:text-black
                   flex items-center justify-center
                   transition-all duration-300">

            <i class="fa-solid fa-bell text-lg"></i>

            <span
    class="absolute -top-1 -right-1
           bg-red-500 text-white
           text-[10px] font-bold
           min-w-[20px] h-5 px-1 rounded-full
           flex items-center justify-center">

   <%= navMessageCount %>

</span>

        </button>



        <!-- Admin Profile -->

        <div class="flex items-center gap-3">

            <div
                class="w-12 h-12 rounded-full
                       bg-cyan-500
                       flex items-center justify-center
                       text-lg font-bold text-black">

                <%= username.substring(0,1).toUpperCase() %>

            </div>

            <div>

                <h3 class="text-white font-semibold">
                    <%= username %>
                </h3>

                <p class="text-slate-400 text-sm">
                    Administrator
                </p>

            </div>

        </div>

    </div>

</header>