<html>

<head><title>Resposta dos estudantes</title></head>

<body>
O estudante está confirmado: ${param.primeironome} ${param.sobrenome }

<br/>

O país do estudante é: ${param.pais }

<br/>

A língua de programação dominante do estudante é : ${param.linguaPrograma }

<br/>

O estudante fala as seguintes línguas:<br/>

<!--  exibindo as línguas faladas por cada estudante -->

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