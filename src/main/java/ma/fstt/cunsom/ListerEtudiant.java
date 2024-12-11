package ma.fstt.cunsom;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ma.fstt.ejbcontainer.EtudiantRemote;
import ma.fstt.entities.Etudiant;

import javax.naming.Context;
import javax.naming.InitialContext;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

@WebServlet("/listerEtudiants")
public class ListerEtudiant extends HttpServlet {
    private EtudiantRemote etudiantRemote;

    @Override
    public void init() throws ServletException {
        try {
            Properties jndiProperties = new Properties();
            jndiProperties.put(Context.INITIAL_CONTEXT_FACTORY, "org.wildfly.naming.client.WildFlyInitialContextFactory");
            jndiProperties.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
            jndiProperties.put(Context.PROVIDER_URL, "http-remoting://localhost:8080");
            jndiProperties.put("jboss.naming.client.ejb.context", true);
            Context context = new InitialContext(jndiProperties);
            etudiantRemote = (EtudiantRemote) context.lookup("ejb:/ejbprovider-1.0-SNAPSHOT/EtudiantRemoteImpl!ma.fstt.ejbcontainer.EtudiantRemote");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Etudiant> etudiants = etudiantRemote.listerEtudiants();
            req.setAttribute("etudiants", etudiants);

            // Debug pour vérifier la liste dans la console
            System.out.println("Étudiants récupérés : " + etudiants);

            req.getRequestDispatcher("/listerEtudiants.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException("Erreur lors de la récupération des étudiants", e);
        }
    }
}