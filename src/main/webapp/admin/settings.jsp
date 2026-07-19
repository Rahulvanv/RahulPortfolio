<%@ page import="com.rahulportfolio.model.Settings"%>
<%@ page import="com.rahulportfolio.model.Admin"%>

<%
Settings settings =
(Settings) request.getAttribute("settings");

Admin loginAdmin =
(Admin) session.getAttribute("admin");
%>

<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-3">
        <i class="fa-solid fa-gear text-cyan-400"></i>
        Portfolio Settings
    </h1>

    <p class="text-slate-400 mt-2">
        Manage your portfolio configuration from one place.
    </p>

</div>

<form action="<%=request.getContextPath()%>/updateSettings"
      method="post">

<input type="hidden"
       name="id"
       value="<%=settings.getId()%>">

<!-- ========================= -->
<!-- Portfolio Information -->
<!-- ========================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">

    <h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

        <i class="fa-solid fa-globe text-cyan-400"></i>

        Portfolio Information

    </h2>

    <div class="grid md:grid-cols-2 gap-6">



    <!-- Footer -->

    <div class="mt-6">

        <label class="block mb-2 text-slate-300">

            Footer Text

        </label>

        <input

            type="text"

            name="footerText"

            value="<%=settings.getFooterText()%>"

            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

    </div>

</div><br><br>

<!-- ========================= -->
<!-- Branding Settings -->
<!-- ========================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">

    <h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

        <i class="fa-solid fa-image text-cyan-400"></i>

        Branding Settings

    </h2>


    <div class="grid md:grid-cols-2 gap-6">


        <!-- Logo Text -->

        <div>

            <label class="block mb-2 text-slate-300">

                Logo Text

            </label>


            <input

            type="text"

            name="logoText"

            value="<%=settings.getLogoText()%>"

            placeholder="RahulPortfolio"

            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


        </div>




    </div>


</div>





<!-- ========================= -->
<!-- Admin Account Settings -->
<!-- ========================= -->


<!-- ========================= -->
<!-- Admin Account Settings -->
<!-- ========================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">


<h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

<i class="fa-solid fa-user-shield text-cyan-400"></i>

Admin Account

</h2>



<div class="grid md:grid-cols-2 gap-6">



<!-- Username -->

<div>


<label class="block mb-2 text-slate-300">

Username

</label>


<input

type="text"

name="adminUsername"

value="<%=loginAdmin.getUsername()%>"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


</div>





<!-- Password -->


<div>


<label class="block mb-2 text-slate-300">

New Password

</label>



<input

type="password"

name="adminPassword"

placeholder="Enter new password"

class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


</div>



</div>



<p class="text-slate-500 text-sm mt-4">

Leave password empty if you don't want to change it.

</p>



</div>
<!-- ========================= -->
<!-- Personal Information -->
<!-- ========================= -->

<!-- ========================= -->
<!-- SEO Settings -->
<!-- ========================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">

    <h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

        <i class="fa-solid fa-magnifying-glass text-cyan-400"></i>

        SEO Settings

    </h2>

    <div class="grid md:grid-cols-2 gap-6">

        <!-- Meta Title -->

        <div>

            <label class="block mb-2 text-slate-300">

                Meta Title

            </label>

            <input
                type="text"
                name="metaTitle"
                value="<%=settings.getMetaTitle()%>"
                class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

        </div>

        <!-- Theme -->

        <div>

            <label class="block mb-2 text-slate-300">

                Theme

            </label>

            <select
                name="theme"
                class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

                <option value="Dark"
                    <%= "Dark".equals(settings.getTheme()) ? "selected" : "" %>>
                    Dark
                </option>

                <option value="Light"
                    <%= "Light".equals(settings.getTheme()) ? "selected" : "" %>>
                    Light
                </option>

            </select>

        </div>

    </div>

    <!-- Meta Description -->

    <div class="mt-6">

        <label class="block mb-2 text-slate-300">

            Meta Description

        </label>

        <textarea
            rows="4"
            name="metaDescription"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white"><%=settings.getMetaDescription()%></textarea>

    </div>

    <!-- Meta Keywords -->

    <div class="mt-6">

        <label class="block mb-2 text-slate-300">

            Meta Keywords

        </label>

        <textarea
            rows="3"
            name="metaKeywords"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white"><%=settings.getMetaKeywords()%></textarea>

    </div>

</div>

<!-- ========================= -->
<!-- Portfolio Visibility -->
<!-- ========================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">

    <h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

        <i class="fa-solid fa-eye text-cyan-400"></i>

        Portfolio Visibility

    </h2>

    <div class="grid md:grid-cols-2 gap-5">

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showHero"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowHero() ? "checked" : "" %>>
            Hero Section
        </label>

       

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showSkills"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowSkills() ? "checked" : "" %>>
            Skills Section
        </label>

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showProjects"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowProjects() ? "checked" : "" %>>
            Projects Section
        </label>

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showExperience"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowExperience() ? "checked" : "" %>>
            Experience Section
        </label>

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showEducation"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowEducation() ? "checked" : "" %>>
            Education Section
        </label>

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showCertificates"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowCertificates() ? "checked" : "" %>>
            Certificates Section
        </label>

        <label class="flex items-center gap-3">
            <input type="checkbox"
                   name="showContact"
                   class="accent-cyan-400 w-5 h-5"
                   <%= settings.isShowContact() ? "checked" : "" %>>
            Contact Section
        </label>

    </div>

</div>

<!-- ========================= -->
<!-- Maintenance -->
<!-- ========================= -->

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-8">

    <h2 class="text-2xl font-semibold mb-6 flex items-center gap-3">

        <i class="fa-solid fa-screwdriver-wrench text-cyan-400"></i>

        Maintenance

    </h2>

    <div class="flex items-center gap-4">

        <input
            type="checkbox"
            id="maintenanceMode"
            name="maintenanceMode"
            class="w-5 h-5 accent-cyan-400"
            <%= settings.isMaintenanceMode() ? "checked" : "" %>>

        <label for="maintenanceMode"
               class="text-slate-300 text-lg">

            Enable Maintenance Mode

        </label>

    </div>

    <p class="text-slate-500 text-sm mt-3">

        When enabled, visitors will see a maintenance page instead of your portfolio.

    </p>

</div>

<!-- ========================= -->
<!-- Save Button -->
<!-- ========================= -->

<div class="flex justify-end">

    <button
        type="submit"
        class="bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-xl transition duration-300 shadow-lg">

        <i class="fa-solid fa-floppy-disk mr-2"></i>

        Save Settings

    </button>

</div>

</form>

