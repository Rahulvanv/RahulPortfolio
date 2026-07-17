<%@ page import="java.util.List"%>
<%@ page import="com.rahulportfolio.model.Certificate"%>


<%

List<Certificate> certificateList =
(List<Certificate>)request.getAttribute("certificateList");


Certificate editCertificate =
(Certificate)request.getAttribute("editCertificate");

%>



<div class="mb-10">


<h1 class="text-4xl font-bold">

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


<h2 class="text-2xl font-bold mb-6">


<%=editCertificate==null?
"➕ Add New Certificate":
"✏ Edit Certificate"%>


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

Current File :
<%=editCertificate.getCertificateFile()%>

</p>

<%
}
%>

</div>







<div class="md:col-span-2">


<label class="block mb-2 text-slate-300">

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

class="mt-8 bg-cyan-500 hover:bg-cyan-400 text-black font-semibold px-8 py-3 rounded-full">


<%=editCertificate==null?
"Save Certificate":
"Update Certificate"%>


</button>



</form>


</div>









<!-- ================= TABLE SECTION ================= -->



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6">

All Certificates

</h2>





<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>


<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
ID
</th>


<th class="p-4">
Title
</th>


<th class="p-4">
Issuer
</th>


<th class="p-4">
Date
</th>


<th class="p-4">
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


class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-lg">

Edit

</a>





<a

href="<%=request.getContextPath()%>/deleteCertificate?id=<%=c.getId()%>"


onclick="return confirm('Delete this certificate?')"


class="bg-red-500 hover:bg-red-600 px-4 py-2 rounded-lg ml-2">

Delete

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