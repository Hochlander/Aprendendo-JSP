<html>
<head>
<title>Confirma��o</title>
</head>

<%
	// para ler os dados do formul�rio
	String favLang = request.getParameter("linguaFavorita");
	
	//para criar o cookie
	Cookie theCookie = new Cookie ("myapp.linguaFavorita", favLang);
	
	// estabelecendo a dura��o do cookie (sempre em segundos)
	theCookie.setMaxAge(60*60*24*180); //<-- pra seis meses
	
	// mandando o cookie para o navegador
	response.addCookie(theCookie);
%>

<body>
Feito! Sua l�ngua foi definida como ${param.linguaFavorita }

<br/>

<a href="cookies-homepage.jsp"> Volte � p�gina principal </a>
</body>
</html>