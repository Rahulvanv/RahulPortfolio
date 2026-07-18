<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Certificate"%>


<%

List<Certificate> certificateList =
(List<Certificate>)request.getAttribute("certificateList");


Certificate editCertificate =
(Certificate)request.getAttribute("editCertificate");

%>



<div class="mb-10">


<h1 class="text-4xl font-bold flex items-center gap-2">

<i class="fa-solid fa-award text-cyan-400"></i>

Manage

<span class="text-cyan-400">
Certificates
</span>

</h1>


<p class="text-slate-400 mt-2">

Add, update and manage your certificates.

</p>


</div>





<!-- ================= FORM SECTION ================= -->


<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8 mb-10">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<% if(editCertificate==null){ %>

<i class="fa-solid fa-circle-plus text-cyan-400"></i>

<span>Add New Certificate</span>

<% } else { %>

<i class="fa-solid fa-pen-to-square text-yellow-400"></i>

<span>Edit Certificate</span>

<% } %>

</h2>





<form

action="<%=request.getContextPath()%>/<%=editCertificate==null?"addCertificate":"updateCertificate"%>"
method="post"
enctype="multipart/form-data">





<%

if(editCertificate!=null){

%>


<input

type="hidden"

name="id"

value="<%=editCertificate.getId()%>"

>


<%

}

%>





<div class="grid md:grid-cols-2 gap-6">





<div>


<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-award text-cyan-400 mr-2"></i>

Certificate Title

</label>


<input

type="text"

name="title"

required


value="<%=editCertificate!=null?
editCertificate.getTitle():""%>"


class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


</div>







<div>


<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-building-columns text-cyan-400 mr-2"></i>

Issuer

</label>


<input

type="text"

name="issuer"


value="<%=editCertificate!=null?
editCertificate.getIssuer():""%>"


class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


</div>







<div>


<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-calendar-days text-cyan-400 mr-2"></i>

Issue Date

</label>


<input

type="text"

name="issueDate"


value="<%=editCertificate!=null?
editCertificate.getIssueDate():""%>"


class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">


</div>








<div>

<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-file-arrow-up text-cyan-400 mr-2"></i>

Certificate File

</label>

<input
type="file"
name="certificateFile"
accept=".pdf,.jpg,.jpeg,.png"
class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white">

<%
if(editCertificate!=null &&
   editCertificate.getCertificateFile()!=null &&
   !editCertificate.getCertificateFile().trim().isEmpty()){
%>

<p class="text-cyan-400 text-sm mt-2">

<i class="fa-solid fa-file-lines mr-2"></i>

Current File :
<%=editCertificate.getCertificateFile()%>

</p>

<%
}
%>

</div>







<div class="md:col-span-2">


<label class="block mb-2 text-slate-300">

<i class="fa-solid fa-align-left text-cyan-400 mr-2"></i>

Description

</label>



<textarea

name="description"

rows="5"


class="w-full bg-slate-800 border border-slate-700 rounded-xl px-4 py-3 text-white"><%=editCertificate!=null?
editCertificate.getDescription():""%></textarea>


</div>




</div>





<button
type="submit"
class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full flex items-center gap-2">

<% if(editCertificate==null){ %>

<i class="fa-solid fa-floppy-disk"></i>

<span>Save Certificate</span>

<% } else { %>

<i class="fa-solid fa-pen"></i>

<span>Update Certificate</span>

<% } %>

</button>



</form>


</div>









<!-- ================= TABLE SECTION ================= -->



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6 flex items-center gap-2">

<i class="fa-solid fa-list-check text-cyan-400"></i>

<span>All Certificates</span>

</h2>





<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>


<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">

<i class="fa-solid fa-hashtag mr-2"></i>

ID

</th>

<th class="p-4">

<i class="fa-solid fa-award mr-2"></i>

Title

</th>

<th class="p-4">

<i class="fa-solid fa-building-columns mr-2"></i>

Issuer

</th>

<th class="p-4">

<i class="fa-solid fa-calendar-days mr-2"></i>

Date

</th>

<th class="p-4">

<i class="fa-solid fa-gears mr-2"></i>

Action

</th>

</tr>


</thead>





<tbody>


<%

if(certificateList!=null && !certificateList.isEmpty()){


for(Certificate c : certificateList){


%>





<tr class="border-b border-slate-800">



<td class="p-4">

<%=c.getId()%>

</td>




<td class="p-4">

<%=c.getTitle()%>

</td>




<td class="p-4">

<%=c.getIssuer()%>

</td>





<td class="p-4">

<%=c.getIssueDate()%>

</td>





<td class="p-4">



<a
href="<%=request.getContextPath()%>/editCertificate?id=<%=c.getId()%>"
class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg inline-flex items-center gap-2">

<i class="fa-solid fa-pen-to-square"></i>

<span>Edit</span>

</a>





<a
href="<%=request.getContextPath()%>/deleteCertificate?id=<%=c.getId()%>"
onclick="return confirm('Delete this certificate?')"
class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg ml-2 inline-flex items-center gap-2">

<i class="fa-solid fa-trash"></i>

<span>Delete</span>

</a>




</td>



</tr>





<%

}

}else{

%>



<tr>


<td colspan="5"

class="text-center py-8 text-slate-400">

<i class="fa-solid fa-circle-info text-2xl mb-2"></i>

<br>

No Certificate Found

</td>


</tr>



<%

}

%>



</tbody>



</table>


</div>


</div>