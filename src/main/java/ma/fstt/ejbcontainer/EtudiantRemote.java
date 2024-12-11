package ma.fstt.ejbcontainer;


import ma.fstt.entities.Etudiant;

import javax.ejb.Remote;
import java.util.List;


@Remote
public interface EtudiantRemote {
    void ajouterEtudiant(Etudiant etudiant);
    Etudiant trouverEtudiant(int id);
    void modifierEtudiant(Etudiant etudiant);
    void supprimerEtudiant(int id);
    List<Etudiant> listerEtudiants();
}
