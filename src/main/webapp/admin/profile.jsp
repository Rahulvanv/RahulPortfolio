<%@ page import="com.rahulportfolio.model.Profile"%>

<%
Profile profile =
(Profile)request.getAttribute("profile");

if(profile == null){

    profile = new Profile();

}
%>

<div class="mb-10">

    <h1 class="text-4xl font-bold">

        <i class="fa-solid fa-user-gear text-cyan-400 mr-2"></i>

        Manage

        <span class="text-cyan-400">

            Profile

        </span>

    </h1>

    <p class="text-slate-400 mt-2">

        Update your portfolio profile information.

    </p>

</div>

<form
action="updateProfile"
method="post"
enctype="multipart/form-data"
class="space-y-8">

<input
type="hidden"
name="id"
value="<%=profile.getId()%>">

<div
class="grid md:grid-cols-2 gap-6">

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-user text-cyan-400 mr-2"></i>
Full Name

</label>

<input
type="text"
name="fullName"
required
value="<%=profile.getFullName()==null?"":profile.getFullName()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-briefcase text-cyan-400 mr-2"></i>
Profession

</label>

<input
type="text"
name="profession"
required
value="<%=profile.getProfession()==null?"":profile.getProfession()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

</div>

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-quote-left text-cyan-400 mr-2"></i>
Tagline

</label>

<input
type="text"
name="tagline"
value="<%=profile.getTagline()==null?"":profile.getTagline()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div class="grid md:grid-cols-2 gap-6">

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-envelope text-cyan-400 mr-2"></i>
Email

</label>

<input
type="email"
name="email"
value="<%=profile.getEmail()==null?"":profile.getEmail()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-phone text-cyan-400 mr-2"></i>
Phone

</label>

<input
type="text"
name="phone"
value="<%=profile.getPhone()==null?"":profile.getPhone()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

</div>

<div>

<label
class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-business-time text-cyan-400 mr-2"></i>
Experience

</label>

<input
type="text"
name="experience"
placeholder="Example : Fresher / 2 Years"
value="<%=profile.getExperience()==null?"":profile.getExperience()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div class="grid md:grid-cols-3 gap-6">

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-city text-cyan-400 mr-2"></i>
City

</label>

<input
type="text"
name="city"
value="<%=profile.getCity()==null?"":profile.getCity()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-map text-cyan-400 mr-2"></i>
State

</label>

<input
type="text"
name="state"
value="<%=profile.getState()==null?"":profile.getState()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-earth-asia text-cyan-400 mr-2"></i>
Country

</label>

<input
type="text"
name="country"
value="<%=profile.getCountry()==null?"":profile.getCountry()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

</div>

<div class="grid md:grid-cols-2 gap-6">

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-brands fa-github text-cyan-400 mr-2"></i>
GitHub URL

</label>

<input
type="url"
name="github"
value="<%=profile.getGithub()==null?"":profile.getGithub()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-brands fa-linkedin text-cyan-400 mr-2"></i>
LinkedIn URL

</label>

<input
type="url"
name="linkedin"
value="<%=profile.getLinkedin()==null?"":profile.getLinkedin()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-solid fa-code text-cyan-400 mr-2"></i>
LeetCode URL

</label>

<input
type="url"
name="leetcode"
value="<%=profile.getLeetcode()==null?"":profile.getLeetcode()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<div>

<label class="block mb-2 text-sm font-semibold">

<i class="fa-brands fa-instagram text-cyan-400 mr-2"></i>
Instagram URL

</label>

<input
type="url"
name="codechef"
placeholder="https://instagram.com/username"
value="<%=profile.getCodechef()==null?"":profile.getCodechef()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<!-- ==========================
     Upload Section
========================== -->

<div class="grid md:grid-cols-2 gap-8">

    <!-- Profile Photo -->

    <div>

        <label class="block mb-2 text-sm font-semibold">

            <i class="fa-solid fa-image text-cyan-400 mr-2"></i>
            Profile Photo

        </label>

        <input
        type="file"
        name="photo"
        accept="image/*"
        class="w-full bg-slate-900 border border-slate-700 rounded-xl p-3">

        <%
        if(profile.getPhoto()!=null && !profile.getPhoto().trim().isEmpty()){
        %>

            <div class="mt-5">

                <p class="text-cyan-400 text-sm mb-3">

                    <i class="fa-solid fa-camera mr-2"></i>
                    Current Photo

                </p>

                <img
                src="images/profile/<%=profile.getPhoto()%>"
                class="w-40 h-40 rounded-xl border-2 border-cyan-400 object-cover">

            </div>

        <%
        }
        %>

    </div>

    <!-- Resume -->

    <div>

        <label class="block mb-2 text-sm font-semibold">

            <i class="fa-solid fa-file-pdf text-cyan-400 mr-2"></i>
            Resume (PDF)

        </label>

        <input
        type="file"
        name="resume"
        accept=".pdf"
        class="w-full bg-slate-900 border border-slate-700 rounded-xl p-3">

        <%
        if(profile.getResume()!=null && !profile.getResume().trim().isEmpty()){
        %>

            <div class="mt-5">

                <p class="text-cyan-400 text-sm">

                    <i class="fa-solid fa-file-lines mr-2"></i>
                    Current Resume

                </p>

                <p class="mt-2 text-slate-300 break-all">

                    <%=profile.getResume()%>

                </p>

            </div>

        <%
        }
        %>

    </div>

</div>

<!-- ==========================
     Save Button
========================== -->

<div class="pt-6">

    <button
    type="submit"
    class="bg-cyan-500 hover:bg-cyan-600 transition px-10 py-4 rounded-xl font-semibold flex items-center gap-2">

        <i class="fa-solid fa-floppy-disk"></i>

        <span>Save Profile</span>

    </button>

</div>

</form>
