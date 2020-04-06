package dev.sgp.web;

import java.io.IOException;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entitie.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet {
	/** serialVersionUID */
	private static final long serialVersionUID = 1L;
	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	/**
	 * doGet => GET /FORMULAIRE (pour afficher le formulaire vide)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// FORWARD => ROUTAGE INTERNE
		// Déléguer à une JSP le traitement de la requête
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);

	}

	/**
	 * dopost => POST /FORMULAIRE (pour recevoir la saisie du formulaire)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Erreur en cas de mauvais numéro de sécu

		String matricule = Long.toHexString(Double.doubleToLongBits(Math.random()));
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateNaissance = req.getParameter("dateNaissance");

		// LocalDate dateNaissance = LocalDate.parse(req.getParameter("dateNaissance"));
		String adresse = req.getParameter("adresse");
		String numeroSecu = req.getParameter("numeroSecu");
		String photo = "../images/photo.jpg";
		ZonedDateTime dateCreation = ZonedDateTime.now();
		Boolean actif = true;

		// Instanciation du collaborateur

		Collaborateur collaborateur = new Collaborateur(matricule, nom, prenom, dateNaissance, adresse, numeroSecu,
				photo, dateCreation, actif);
		// cas erreur
		if (nom == "" || prenom == "" || adresse == "" || numeroSecu.length() != 15) {
			req.setAttribute("collaborateur", collaborateur);
			req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);
			resp.setStatus(400);
		} else {
			// Ajout du collaborateur
			collabService.sauvegarderCollaborateur(collaborateur);
			resp.sendRedirect(req.getContextPath() + "/collaborateurs/lister");

		}

//		collabService.sauvegarderCollaborateur(collaborateur);
//		resp.sendRedirect(req.getContextPath() + "/collaborateurs/lister");
	}
}
