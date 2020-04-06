<!DOCTYPE html>
<%@page import="dev.sgp.entitie.Collaborateur"%>
<%@page import="java.util.List"%>
<html lang="fr">
    <head>	<!-- En-tête de la page -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <title>COLLABORATEURS TP 03</title> <!-- Ce titre s'affiche dans l'onglet du navigateur -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body> 	<!-- Corps de la page -->

		<!-- HEADER Titre de la page -->
		<div class="jumbotron text-center" style="margin-bottom:0">
            <h1>TP 03 - JSP</h1>
        </div>

        <!-- MENU PRINCIPAL -->
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="#">Accueil</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="lister">LISTE COLLABORATEURS</a></li>
                    <li class="nav-item"><a class="nav-link" href="nouveau">AJOUTER COLLABORATEUR</a></li>
                </ul>
            </div>
        </nav>
        <!-- Fin du MENU PRINCIPAL -->

        <!-- ZONE PRINCIPALE -->
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
        <!-- Fin ZONE PRINCIPALE -->
		

        <!-- PIED DE PAGE -->
        <div class="jumbotron text-center" style="margin-bottom:0">
            &copy; 2020 - Vive le bootstrap !
        </div>
        <!-- Fin PIED DE PAGE -->

	</body>
</html>