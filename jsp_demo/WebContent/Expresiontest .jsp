<html>

<body>

Converting a string to uppercase: <%= new String("hell world").toUpperCase() %>

<br/><br/>

10 multiplied 20 equals <%= 10*20 %>

<br/><br/>

Here is a random number for you(between 1~10): <%=  (int)(Math.random()*10) %>
<br/><br/>
<%
for(int i=5;i>=0;i--){
	out.print("<br/>It's the final countdown: "+i);
}
%>
  
<%!
	String LC(String s){
	return s.toLowerCase();
}
%>
<br/><br/>
Lower case"Hell World":<%= LC("Hell World") %>

</body>

</html>