<html>
<head>
<title>Confirmação</title>
</head>

<%
	// para ler os dados do formulário
	String favLang = request.getParameter("linguaFavorita");
	
	//para criar o cookie
	Cookie theCookie = new Cookie ("myapp.linguaFavorita", favLang);
	
	// estabelecendo a duração do cookie (sempre em segundos)
	theCookie.setMaxAge(60*60*24*180); //<-- pra seis meses
	
	// mandando o cookie para o navegador
	response.addCookie(theCookie);
%>

<body>
Feito! Sua língua foi definida como ${param.linguaFavorita }

<br/>

<a href="cookies-homepage.jsp"> Volte à página principal </a>
</body>
</html>