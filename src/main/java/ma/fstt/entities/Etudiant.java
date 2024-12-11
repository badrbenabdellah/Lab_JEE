package ma.fstt.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

//@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Etudiant implements Serializable {

    private static final long serialVersionUID = 1L;

    private int id_etudiant;
    private String nom;
    private String prenom;
    private String cne;
    private String adresse;
    private String niveau;

}