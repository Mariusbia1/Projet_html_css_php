<?php

// Informations de connexion à la base de données
$dbname = "commandes";
$user = "root";
$pass = "";

try {
    // Connexion à la base de données
    $conn = new PDO("mysql:host=localhost;dbname=$dbname", $user, $pass);

    // Configuration de PDO pour qu'il lève des exceptions en cas d'erreur
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Préparation de la requête SQL pour insérer les données du formulaire
    $stmt = $conn->prepare("INSERT INTO formulaire (nom, telephone, adresse, plat) VALUES (:nom, :telephone, :adresse, :plat)");

    // Liaison des valeurs des champs du formulaire aux paramètres de la requête SQL
    $stmt->bindParam(':nom', $_POST['nom']);
    $stmt->bindParam(':telephone', $_POST['telephone']);
    $stmt->bindParam(':adresse', $_POST['adresse']);
    $stmt->bindParam(':plat', $_POST['plat']);

    // Exécution de la requête SQL pour insérer les données dans la table
    $stmt->execute();

    // Fermeture de la connexion à la base de données
    $conn = null;

   

} catch (PDOException $e) {
    // En cas d'erreur, affichage d'un message d'erreur et arrêt du script
    echo "Erreur : " . $e->getMessage();
    die();
}
// Affiche un message de confirmation de réception de la commande
echo "<p>Merci pour votre commande ! Nous avons bien reçu vos informations et nous nous occupons de votre commande.</p>";

// Redirige l'utilisateur vers la page d'accueil après 5 secondes
header("Refresh: 5; url=Index.html");


?>
