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

Tagline

</label>

<input
type="text"
name="tagline"
value="<%=profile.getTagline()==null?"":profile.getTagline()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<!-- ==========================
     About Section
========================== -->

<div>

<label
class="block mb-2 text-sm font-semibold">

About Paragraph 1

</label>

<textarea
name="about1"
rows="5"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4"><%=profile.getAbout1()==null?"":profile.getAbout1()%></textarea>

</div>

<div>

<label
class="block mb-2 text-sm font-semibold">

About Paragraph 2

</label>

<textarea
name="about2"
rows="5"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4"><%=profile.getAbout2()==null?"":profile.getAbout2()%></textarea>

</div>

<!-- ==========================
     Contact Details
========================== -->

<div class="grid md:grid-cols-2 gap-6">

<div>

<label
class="block mb-2 text-sm font-semibold">

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

Phone

</label>

<input
type="text"
name="phone"
value="<%=profile.getPhone()==null?"":profile.getPhone()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

</div>

<!-- ==========================
     Experience
========================== -->

<div>

<label
class="block mb-2 text-sm font-semibold">

Experience

</label>

<input
type="text"
name="experience"
placeholder="Example : Fresher / 2 Years"
value="<%=profile.getExperience()==null?"":profile.getExperience()%>"
class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

<!-- ==========================
     Location
========================== -->

<div class="grid md:grid-cols-3 gap-6">

    <div>

        <label class="block mb-2 text-sm font-semibold">
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
            Country
        </label>

        <input
        type="text"
        name="country"
        value="<%=profile.getCountry()==null?"":profile.getCountry()%>"
        class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

    </div>

</div>

<!-- ==========================
     Social Profiles
========================== -->

<div class="grid md:grid-cols-2 gap-6">

    <div>

        <label class="block mb-2 text-sm font-semibold">
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
            HackerRank URL
        </label>

        <input
        type="url"
        name="hackerrank"
        value="<%=profile.getHackerrank()==null?"":profile.getHackerrank()%>"
        class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

    </div>

   <div>

    <label class="block mb-2 text-sm font-semibold">
        Instagram URL
    </label>

    <input
    type="url"
    name="codechef"
    placeholder="https://instagram.com/username"
    value="<%=profile.getCodechef()==null?"":profile.getCodechef()%>"
    class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>
   <div>

    <label class="block mb-2 text-sm font-semibold">
        Leetcode URL
    </label>

    <input
    type="text"
    name="codeforces"
    placeholder="919876543210"
    value="<%=profile.getCodeforces()==null?"":profile.getCodeforces()%>"
    class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

</div>

    <div class="md:col-span-2">

        <label class="block mb-2 text-sm font-semibold">
            GeeksforGeeks URL
        </label>

        <input
        type="url"
        name="gfg"
        value="<%=profile.getGfg()==null?"":profile.getGfg()%>"
        class="w-full bg-slate-900 border border-slate-700 rounded-xl p-4">

    </div>

</div>


<!-- ==========================
     Upload Section
========================== -->

<div class="grid md:grid-cols-2 gap-8">

    <!-- Profile Photo -->

    <div>

        <label class="block mb-2 text-sm font-semibold">
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
    class="bg-cyan-500 hover:bg-cyan-600 transition px-10 py-4 rounded-xl font-semibold">

        Save Profile

    </button>

</div>

</form>

