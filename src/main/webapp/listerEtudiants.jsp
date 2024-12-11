<%--
  Créé par IntelliJ IDEA.
  Utilisateur : benab
  Date : 11/12/2024
  Heure : 18:08
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Étudiants</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #2563eb;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            max-width: 900px;
            border-collapse: collapse;
            margin-bottom: 20px;
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #e5e7eb;
        }

        th {
            background-color: #2563eb;
            color: white;
            font-weight: bold;
        }

        td {
            color: #374151;
        }

        td a {
            color: #2563eb;
            text-decoration: none;
        }

        td a:hover {
            text-decoration: underline;
        }

        .actions a {
            display: inline-block;
            margin-right: 8px;
            padding: 6px 12px;
            border-radius: 4px;
            font-size: 14px;
            font-weight: bold;
            color: white;
            text-align: center;
        }

        .actions .btn {
            background-color: #2563eb;
        }

        .actions .btn:hover {
            background-color: #1d4ed8;
        }

        .actions .btn.delete {
            background-color: #ef4444;
        }

        .actions .btn.delete:hover {
            background-color: #dc2626;
        }

        a.btn {
            padding: 10px 16px;
            background-color: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 10px;
        }

        a.btn:hover {
            background-color: #1d4ed8;
        }
    </style>
</head>
<body>
<h1>Liste des Étudiants</h1>
<c:choose>
    <c:when test="${not empty etudiants}">
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>CNE</th>
                <th>Adresse</th>
                <th>Niveau</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="etudiant" items="${etudiants}">
                <tr>
                    <td>${etudiant.id_etudiant}</td>
                    <td>${etudiant.nom}</td>
                    <td>${etudiant.prenom}</td>
                    <td>${etudiant.cne}</td>
                    <td>${etudiant.adresse}</td>
                    <td>${etudiant.niveau}</td>
                    <td class="actions">
                        <a href="modifierEtudiant?id=${etudiant.id_etudiant}" class="btn">Modifier</a>
                        <a href="supprimerEtudiant?id=${etudiant.id_etudiant}" class="btn delete" onclick="return confirm('Voulez-vous vraiment supprimer cet étudiant ?');">Supprimer</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        <p>Aucun étudiant trouvé.</p>
    </c:otherwise>
</c:choose>
<a href="ajouterEtudiant.jsp" class="btn">Ajouter un étudiant</a>
</body>
</html>
