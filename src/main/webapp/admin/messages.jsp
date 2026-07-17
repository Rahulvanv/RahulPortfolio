<%@ page import="java.util.List" %>
<%@ page import="com.rahulportfolio.model.Contact" %>


<%

List<Contact> contactList =
(List<Contact>)request.getAttribute("contactList");

%>


<div class="mb-10">

<h1 class="text-4xl font-bold">
Manage 
<span class="text-cyan-400">
Messages
</span>
</h1>


<p class="text-slate-400 mt-2">
View contact messages from portfolio visitors.
</p>

</div>



<div class="bg-slate-900 border border-slate-700 rounded-2xl p-8">


<h2 class="text-2xl font-bold mb-6">
All Messages
</h2>



<div class="overflow-x-auto">


<table class="w-full text-left">


<thead>

<tr class="border-b border-slate-700 text-cyan-400">


<th class="p-4">
Name
</th>


<th class="p-4">
Email
</th>


<th class="p-4">
Subject
</th>


<th class="p-4 w-96">
Message
</th>

<th class="p-4">
Time
</th>


<th class="p-4">
Action
</th>


</tr>

</thead>




<tbody>


<%

if(contactList!=null && !contactList.isEmpty()){


for(Contact c : contactList){

%>


<tr class="border-b border-slate-800">


<td class="p-4">
<%=c.getFullName()%>
</td>


<td class="p-4">
<%=c.getEmail()%>
</td>


<td class="p-4">
<%=c.getSubject()%>
</td>


<td class="p-4">
<%=c.getMessage()%>
</td>

<td class="p-4 text-slate-400">

<%=c.getCreatedAt()%>

</td>



<td class="p-4">


<a href="<%=request.getContextPath()%>/deleteMessage?id=<%=c.getId()%>"
onclick="return confirm('Delete message?')"
class="bg-red-500 px-4 py-2 rounded-lg">

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

No Messages Found

</td>

</tr>


<%

}

%>


</tbody>


</table>


</div>


</div>