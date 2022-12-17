<?php
	require_once("connect.inc.php");
	error_reporting(0);

    if (isset($_POST['Valider']) && ($_POST['username'] != "") && ($_POST['password'] != "") && ($_POST['last_name'] != "") && ($_POST['first_name'] != "") && ($_POST['mail'] != "") /* && isset($_POST['date_naiss']) */ && ($_POST['departement'] != "")) {
		// on crée une autre variable pour la définition d'une requête paramétrée d'insertion
		$req3 = "INSERT INTO Client (idClient, pseudoClient, nomClient, prenomClient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient) VALUES(seq_Client.NEXTVAL,:psC, :nomC, :preC, :mailC, :naisC, :counC, :depC, :passC)";						 
		// on prépare la requête paramétrée
		$insertClient = oci_parse($connect, $req3);
		// on associe les valeurs aux paramètres de la requête via des variables (sinon ça marche pas !)
		$pseudoClient = htmlentities($_POST['username']);
		$nomClient = htmlentities($_POST['last_name']);
		$prenomClient = htmlentities($_POST['first_name']);
		$mailClient = htmlentities($_POST['mail']);
		$dteNaissanceClient = htmlentities($_POST['date_naiss']);
		$paysClient = htmlentities($_POST['country']);
		$depClient = htmlentities($_POST['departement']);
		$mdpClient = htmlentities($_POST['password']);

		echo $pseudoClient; echo "</br>";
		echo $nomClient; echo "</br>";
		echo $prenomClient; echo "</br>";
		echo $mailClient; echo "</br>";
		echo $dteNaissanceClient; echo "</br>";
		echo $paysClient; echo "</br>";
		echo $depClient; echo "</br>";
		echo $mdpClient; echo "</br>";

		$hashMDP = password_hash($mdpClient, PASSWORD_DEFAULT);

		oci_bind_by_name($insertClient, ":idC", $idClient);
		oci_bind_by_name($insertClient, ":psC", $pseudoClient);
		oci_bind_by_name($insertClient, ":nomC", $nomClient);
		oci_bind_by_name($insertClient, ":preC", $prenomClient);
		oci_bind_by_name($insertClient, ":mailC", $mailClient);
		oci_bind_by_name($insertClient, ":naisC", $dteNaissanceClient);
		oci_bind_by_name($insertClient, ":counC", $paysClient);
		oci_bind_by_name($insertClient, ":depC", $depClient);
		oci_bind_by_name($insertClient, ":passC", $hashMDP);

		// on execute la requete
		$result = oci_execute($insertClient);
		// si erreur de requete alors affichage...
		if (!$result) {
			$e = oci_error($insertClient);  // on récupère l'exception liée au pb d'execution de la requete (violation PK par exemple)
			print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);		
		}
		// vérifiez l'insertion dans SQL developer avec cette requete : select * from joueur where nj > 299;
		// on commit les modifs faites
		oci_commit($connect);

		// Libère toutes les ressources réservées par un résultat Oracle
		oci_free_statement($insertClient);
		header('location: index.php');
		exit();
	} else {
        header('location: FormConnexion.php?msgErreur=Tous les champs n\'ont pas été remplis correctement');
        exit();
    }
?>