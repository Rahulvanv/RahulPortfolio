<%@ page import="com.rahulportfolio.model.Admin" %>

<%

String username = "Admin";

Admin navbarAdmin = (Admin)session.getAttribute("admin");

if(navbarAdmin != null){

    username = navbarAdmin.getUsername();

}

%>


<!-- Admin Navbar -->

<header class="h-20 bg-slate-900 border-b border-slate-700 
flex items-center justify-between px-8">


    <!-- Left Section -->

    <div>

        <h2 class="text-2xl font-bold text-white">

            Admin Dashboard

        </h2>


        <p class="text-slate-400 text-sm">

            Manage your portfolio website

        </p>

    </div>




    <!-- Right Section -->

    <div class="flex items-center gap-6">



        <!-- Notification -->

        <button class="relative text-2xl hover:text-cyan-400 transition">


            🔔


            <span class="absolute -top-2 -right-2 
            bg-cyan-500 text-white text-xs 
            w-5 h-5 rounded-full flex items-center justify-center">


                0


            </span>


        </button>





        <!-- Admin Profile -->

        <div class="flex items-center gap-3">


            <div class="w-12 h-12 rounded-full 
            bg-cyan-500 flex items-center justify-center
            text-xl font-bold text-black">


                <%=username.substring(0,1).toUpperCase()%>


            </div>




            <div>


                <h3 class="text-white font-semibold">

                    <%=username%>

                </h3>


                <p class="text-slate-400 text-sm">

                    Administrator

                </p>


            </div>


        </div>


    </div>



</header>