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
        <div class="container" style="margin-top:30px;">
            <div class="row">
                <!-- COLONNE DE GAUCHE = PRINCIPALE -->
                <div class="col-sm-8">	
                    <h2>LISTE DES COLLABORATEURS</h2>
					<ul>
						<%
							List<Collaborateur> listeNoms = (List<Collaborateur>) request.getAttribute("listeCollaborateurs");
						for (Collaborateur collab : listeNoms) {
						%>
						
						<div class="col-sm-8">
		                    <!-- Formulaire de recherche -->
		                    <div class="card">
		                        <div class="card-header">
		                            <i class="fas fa-user-friends"></i> Nom : <b><%=collab.getNom()%></b> - Prenom : <b><%=collab.getPrenom()%></b>
		                        </div>
		                        <div class="card-body">
			                        <div class="form-group">
										<img src=<%=collab.getPhoto()%> alt="Photo collaborateur" style=" width: 200px;">
									</div>
	                                <div class="form-group">
	                                    Date de Naissance : <b><%=collab.getDateDeNaissance()%></b>
	                                </div>
	                                <div class="form-group">
	                                    Adresse : <b><%=collab.getAdresse()%></b>
	                                </div>
	                                <div class="form-group">
	                                    Numero de sécu : <b><%=collab.getNumeroSecuriteSociale()%></b>
	                                </div>

		                        </div>
		                    </div><br>
		                </div>
						<%
							}
						%>
					</ul>
                </div>
                <!-- Fin Colonne de gauche -->
                
                <!-- COLONNE DE DROITE -->
                <div class="col-sm-4">
                    <!-- Formulaire de recherche -->
                    <div class="card">
                        <div class="card-header">
                            <i class="fa fa-search"></i> Rechercher
                        </div>
                        <div class="card-body">
                            <form method="post" action="#">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="recherche" id="recherche" />
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-success form-control" data-toggle="modal" data-target="#myModal">Rechercher</button>
                                </div>
                            </form>
                        </div>
                    </div><br>
                </div>
                <!-- Fin Colonne de droite -->
            </div>
        </div>
        <!-- Fin ZONE PRINCIPALE -->
		

        <!-- PIED DE PAGE -->
        <div class="jumbotron text-center" style="margin-bottom:0">
            &copy; 2020 - Vive le bootstrap !
        </div>
        <!-- Fin PIED DE PAGE -->

        <!-- Une boite de dialogue -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Heading</h4>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <p>Le champ de recherche ne peut pas être vide.</p>
                    </div>
                    
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">
                            Close
                        </button>
                    </div>
                
                </div>
            </div>
        </div>
        <!-- Fin boite de dialogue -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>