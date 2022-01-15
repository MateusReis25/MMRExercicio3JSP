
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Primeira página JSP
	
	<%-- Exercicio 1 --%>
	
	<%! boolean formartar = true; %>
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	<h1>A data de hoje é: <%=new java.util.Date()%></h1>
	<h1>A data de hoje é: <%=today()%></h1>
	<h1>A data de hoje é: <% if(formartar){
								out.println(today());
								}
								else{
									out.println(new java.util.Date());
								}%></h1>
	<br>
	<br>
	<br>
								
	<%-- ________________________________________________________________________________________--%>						
 	
	<%-- Exercicio 2 --%>
	
	<h2>Contador Regressivo:</h2>

	<%! int numero = 20; %>
	<h4>Tendo numero inicial de: <%=numero%>.</h4>	
	<% 
		out.println(numero);
	
		while (numero>=1){
			numero = numero - 1;
			out.println(numero);
		}
	%>
	<%="Fim" %>
	
	
		
	
		
		
	
</body>
</html>