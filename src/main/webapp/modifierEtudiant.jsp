<%--
  Créé par IntelliJ IDEA.
  Utilisateur : benab
  Date : 11/12/2024
  Heure : 19:34
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier Étudiant</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 100%;
            max-width: 420px;
        }

        h1 {
            font-size: 26px;
            color: #2563eb;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 14px;
            color: #374151;
            font-weight: 500;
        }

        input {
            padding: 12px;
            border: 1px solid #d1d5db;
            border-radius: 8px;
            font-size: 14px;
            color: #374151;
            transition: all 0.3s;
        }

        input:focus {
            border-color: #2563eb;
            box-shadow: 0 0 4px rgba(37, 99, 235, 0.4);
            outline: none;
        }

        button {
            background-color: #2563eb;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #1d4ed8;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #2563eb;
            font-size: 14px;
            font-weight: 500;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Modifier Étudiant</h1>
    <form action="modifierEtudiant" method="post">
        <input type="hidden" name="id" value="${etudiant.id_etudiant}">

        <label for="nom">Nom</label>
        <input type="text" id="nom" name="nom" value="${etudiant.nom}" required>

        <label for="prenom">Prénom</label>
        <input type="text" id="prenom" name="prenom" value="${etudiant.prenom}" required>

        <label for="cne">CNE</label>
        <input type="text" id="cne" name="cne" value="${etudiant.cne}" required>

        <label for="adresse">Adresse</label>
        <input type="text" id="adresse" name="adresse" value="${etudiant.adresse}" required>

        <label for="niveau">Niveau</label>
        <input type="text" id="niveau" name="niveau" value="${etudiant.niveau}" required>

        <button type="submit">Mettre à jour</button>
    </form>
    <a href="listerEtudiants">Retour à la liste</a>
</div>
</body>
</html>
