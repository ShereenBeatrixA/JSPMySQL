<%
	session.removeAttribute("user");
	session.removeAttribute("pass");
	%>
		<script>
			alert('Session Habis');
			document.location='loginSession.jsp';
		</script>
	<%
%>