
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Primeira p�gina JSP
	
	<%-- Exercicio 1 --%>
	
	<%! boolean formartar = true; %>
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	<h1>A data de hoje �: <%=new java.util.Date()%></h1>
	<h1>A data de hoje �: <%=today()%></h1>
	<h1>A data de hoje �: <% if(formartar){
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
	
	
	<br>
	<br>
	<br>
								
	<%-- ________________________________________________________________________________________--%>						
 	
	<%-- Exercicio 3 --%>
		
		<%!
			Calendar seg = Calendar.getInstance();
		%>
		
		<%! 
			int segundos(){
			return seg.get(Calendar.SECOND);
			}
		%>
		 
		<%
			if(segundos() % 2 == 0){
				out.println("Os segundos atualmente � par!");
			}
			else {
				out.println("Os segundos atualmente � �mpar!");
			}
		%>
	
</body>
</html>