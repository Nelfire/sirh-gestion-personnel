<%@page import="dev.sgp.entitie.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>SGP - App</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body>
	<a href="nouveau">Nouveau Collaborateur</a>
	<h1>Les collaborateurs</h1>
	<ul>
		<%
			List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeCollaborateurs");
		for (Collaborateur collab : listeNoms) {
		%>
		<li>Nom :<%=collab.getNom()%></li>
		<li>Prenom :<%=collab.getPrenom()%></li>
		<li>Date de Naissance :<%=collab.getDateDeNaissance()%></li>
		<li>Adresse :<%=collab.getAdresse()%></li>
		<li>Numero de sécu :<%=collab.getNumeroSecuriteSociale()%></li>
		<%
			}
		%>
	</ul>
</body>
</html>
