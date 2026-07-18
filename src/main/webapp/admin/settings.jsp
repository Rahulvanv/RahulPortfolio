<%@ page import="com.rahulportfolio.model.Settings"%>

<%
Settings settings = (Settings) request.getAttribute("settings");
%>

<div class="mb-10">

    <h1 class="text-4xl font-bold flex items-center gap-2">

        <i class="fa-solid fa-gear text-cyan-400"></i>

        Settings

    </h1>

    <p class="text-slate-400 mt-2"> 
        Manage your portfolio settings.
    </p>

</div>

<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">

<form action="<%=request.getContextPath()%>/updateSettings"
      method="post">

<input type="hidden"
       name="id"
       value="<%=settings.getId()%>">

<div class="grid md:grid-cols-2 gap-6">

    <!-- Site Title -->

    <div>

        <label class="block mb-2 text-slate-300">

            <i class="fa-solid fa-globe text-cyan-400 mr-2"></i>

            Site Title

        </label>

        <input
            type="text"
            name="siteTitle"
            value="<%=settings.getSiteTitle()%>"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

    </div>

    <!-- Email -->

    <div>

        <label class="block mb-2 text-slate-300">

            <i class="fa-solid fa-envelope text-cyan-400 mr-2"></i>

            Email

        </label>

        <input
            type="email"
            name="primaryEmail"
            value="<%=settings.getPrimaryEmail()%>"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

    </div>

    <!-- Phone -->

    <div>

        <label class="block mb-2 text-slate-300">

            <i class="fa-solid fa-phone text-cyan-400 mr-2"></i>

            Phone

        </label>

        <input
            type="text"
            name="phone"
            value="<%=settings.getPhone()%>"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

    </div>

    <!-- Location -->

    <div>

        <label class="block mb-2 text-slate-300">

            <i class="fa-solid fa-location-dot text-cyan-400 mr-2"></i>

            Location

        </label>

        <input
            type="text"
            name="location"
            value="<%=settings.getLocation()%>"
            class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

    </div>

</div>

<!-- Description -->

<div class="mt-6">

    <label class="block mb-2 text-slate-300">

        <i class="fa-solid fa-align-left text-cyan-400 mr-2"></i>

        Site Description

    </label>

    <textarea
        rows="4"
        name="siteDescription"
        class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white"><%=settings.getSiteDescription()%></textarea>

</div>

<!-- Theme -->

<div class="mt-6">

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-palette text-cyan-400 mr-2"></i>

Theme

</label>

<select
name="theme"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

<option value="Dark"
<%=settings.getTheme().equals("Dark")?"selected":""%>>

Dark

</option>

<option value="Light"
<%=settings.getTheme().equals("Light")?"selected":""%>>

Light

</option>

</select>

</div>

<!-- Maintenance -->

<div class="mt-8 flex items-center gap-3">

<input
type="checkbox"
name="maintenanceMode"

<%=settings.isMaintenanceMode()?"checked":""%>

class="w-5 h-5 accent-cyan-400">

<label>

Enable Maintenance Mode

</label>

</div>

<button
type="submit"
class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black px-8 py-3 rounded-full font-semibold">

<i class="fa-solid fa-floppy-disk mr-2"></i>

Save Settings

</button>

</form>

</div>