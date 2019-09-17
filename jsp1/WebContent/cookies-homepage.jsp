<html>

<body>
<h3> Portal de treinamento</h3>

<!--  para ler a cookie de língua favorita, criada no cookies-formulário -->

<%
	// se não houver cookies, o padrão será
	String favLang = "Sanscrito";

	// pegando as cookies da solicitação do navegador
	Cookie[] theCookies = request.getCookies();
	
	// encontrando a cookie para sua lingua favorita
	if (theCookies != null){
		
		for (Cookie tempCookie : theCookies){
			
			if("myapp.linguaFavorita".equals(tempCookie.getName())){
				favLang = tempCookie.getValue();
				break;			
			
			}
			
		}
	}
%>

	<!-- agora, moestrando a página personalizada usando a variável "favLang' -->
	<h4>Novos livros para <%= favLang %></h4>
	<ul>
		<li>livros livros</li>	
		<li>livros livros</li>		
	</ul>
	
	<h4>Novos empregos para <%= favLang %></h4>
	<ul>
		<li>empregos</li>	
		<li>empregos</li>		
	</ul>
	
	<h4>Novos insights para <%= favLang %></h4>
	<ul>
		<li>insight</li>	
		<li>insight</li>		
	</ul>
	
	<hr>
	<a href = "cookies-formulario.jsp"> Personalize esta página</a>
</body>

</html>