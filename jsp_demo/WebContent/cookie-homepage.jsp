<html>

<body>
<h3>Training Portal</h3>
<% 		
	String favL="Java";
	
	Cookie[] theCookies =request.getCookies();
	
	if(theCookies != null){
		
		for(Cookie temp: theCookies){
			if("myApp.fl".equals(temp.getName())){
				favL =temp.getValue();
				break;
			}
		}
	}
%>
<h4>Old Books for <%= favL %></h4>
<ul>
	<li>... ... ...</li>
	<li>... ... ...</li>
</ul>

<h4>Oldest News Reports for <%= favL %></h4>
<ul>
	<li>... ... ...</li>
	<li>... ... ...</li>
</ul>

<h4>Cold Jobs for <%= favL %></h4>
<ul>
	<li>... ... ...</li>
	<li>... ... ...</li>
</ul>

<hr>
<a href="cookie-personalize-form.html">Change your favorite language </a>
		
</body>

</html>