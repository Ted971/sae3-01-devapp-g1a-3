<?php
    session_start();
	require_once("connect.inc.php");
	error_reporting(0);

	if (isset($_POST['Valider']) && isset($_POST['login']) && isset($_POST['password'])) {
		// on va créer une requete paramétrée
		$req2 = "SELECT passwordClient FROM Client WHERE pseudoClient = :psClient";
		// on prépare la requête
		$lesClients = oci_parse($connect, $req2);
			
		// il faut passer par une variable pour contenir la valeur
		$login = $_POST['login']; 

		// on lie la valeur au paramètre de la requête
		oci_bind_by_name($lesClients, ":psClient", $login);
		
		// on execute la requete
		$result = oci_execute($lesClients);
		// pas d'erreur Oracle ici car un select qui ne ramene rien n'est pas une erreur, c'est un résultat...
		
		$cpt = 0;

		while (($leMDPClient = oci_fetch_array($lesClients))) {
			$mdp = $leMDPClient[0];
		}

		if (password_verify($_POST['password'], $mdp)) {
			$cpt = $cpt + 1;
		}

		// Libère toutes les ressources réservées par un résultat Oracle
		oci_free_statement($lesClients);

		if ($cpt == 1){
			$_SESSION['acces'] = 'oui';
			$_SESSION['nom'] = htmlentities($_POST['login']);
			if (isset($_POST['souvenir'])){
				$val = htmlentities($_POST['login']);
				setcookie("cookIdent", $val, time()+182*24*60*60);
			}
			header('location: index.php');
			exit();
		} else {
			header('location: FormConnexion.php?msgErreurConn=Identifiants incorrects..');
			exit();
		}
	}
?>