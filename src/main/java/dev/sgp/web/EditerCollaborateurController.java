package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

/**
 * @author 20-100
 *
 */
public class EditerCollaborateurController extends HttpServlet {
	/**
	 * doGet
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// recupere la valeur matricule
		String matricule = req.getParameter("matricule");

		// Tests
		// Cas 1 : matricule vide
		if (matricule == null) {
			// Code 400
			resp.setStatus(400);
			// Affichage
			resp.getWriter().write("<h2>Edition de collaborateur</h2><br><br> Matricule : Un matricule est attendu");
		} else // Cas 2 : matricule renseigné
		{
			// Code 200
			resp.setStatus(200);
			// Affichage
			resp.getWriter().write("<h2>Edition de collaborateur</h2><br><br> Matricule : " + matricule);
			resp.setContentType("text/html");
		}
		resp.setContentType("text/html");

	}

	/**
	 * dopost
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//Recuperation parametres
		//Matricule
		String matricule = req.getParameter("matricule");
		//Titre
		String titre = req.getParameter("titre");
		//Nom
		String nom = req.getParameter("nom");
		//Prenom
		String prenom = req.getParameter("prenom");

		//On stockque les parametres manquant
		List<String> paramNull = new ArrayList<String>();
		if (matricule == null || matricule.isEmpty()){
			paramNull.add("matricule");
		}
		//Titre
		if (titre == null || titre.isEmpty()) {
			paramNull.add("titre");
		}
		//Nom
		if (nom == null || nom.isEmpty()) {
			paramNull.add("nom");
		}
		//Prenom
		if (prenom == null || prenom.isEmpty()){
			paramNull.add("prenom");
		}

		if (paramNull.isEmpty()) {
			
			resp.setStatus(201);
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes :");
			resp.getWriter()
					.write("matricule=" + matricule + ", titre=" + titre + ", nom=" + nom + ", prenom=" + prenom);

		} else {
			resp.setStatus(400);
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes :");
			resp.getWriter().write("Les paramètres suivants sont incorrects :");
			for (String courant : paramNull) {
				resp.getWriter().write("_" + courant);
			}

		}
	}
}
