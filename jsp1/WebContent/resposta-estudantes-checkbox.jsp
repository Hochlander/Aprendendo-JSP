<html>

<head><title>Resposta dos estudantes</title></head>

<body>
O estudante est� confirmado: ${param.primeironome} ${param.sobrenome }

<br/>

O pa�s do estudante �: ${param.pais }

<br/>

A l�ngua de programa��o dominante do estudante � : ${param.linguaPrograma }

<br/>

O estudante fala as seguintes l�nguas:<br/>

<!--  exibindo as l�nguas faladas por cada estudante -->

<ul>
<%
String [] langs = request.getParameterValues("falaLingua");

for(String tempLang : langs) {
	out.println("<li>" + tempLang + "</li>");
}
%>
</ul>
</body>
</html>