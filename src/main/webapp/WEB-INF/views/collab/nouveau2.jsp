<%@page import="dev.sgp.entitie.Collaborateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Nouveau collaborateur</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.4.1-dist/css/bootstrap.css">
</head>
<body>
<a href="lister">Lister Collaborateurs</a>
	<div class="container" style="margin-top: 30px;">
		<h1>Nouveau collaborateur</h1>
		<div class="row">
			<!-- COLONNE DE GAUCHE = PRINCIPALE -->
			<div class="col-sm-5" >
				<form method="post">
					<div style=" margin-bottom: 20px;">
						<label for="nom">Nom</label> 
						<input type="text" id="nom"
							name="nom" class="form-control" required="required"/>
					</div>
					<div style=" margin-bottom: 20px;">
						<label for="nom">Prenom</label> 
						<input type="text" id="prenom"
							name="prenom" class="form-control" required="required"/>
					</div>
					<div style="margin-bottom: 20px;">
						<label for="nom">Date de Naissance</label> 
						<input type="date"
							id="dateDeNaissance" name="dateDeNaissance" class="form-control"
							required="required"/>
					</div>
					<div style="margin-bottom: 20px;">
						<label for="nom">Adresse</label>
						<textarea class="form-control" name="adresse" id="adresse" rows="5" required="required"></textArea>
					</div>
					<div style=" margin-bottom: 20px;">
						<label for="nom">Numero de Sécurité Sociale</label> 
						<input type="text" id="numeroSecu"
							name="numeroSecu" class="form-control" minlength="15" maxlength="15" required />
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-xl" id="envoi">J'envoi !</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
