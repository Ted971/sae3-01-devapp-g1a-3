<?php
    session_start();
	require_once("connect.inc.php");
	error_reporting(0);

	if (isset($_POST['Valider']) && isset($_POST['id'])) {
		// on va créer une requete paramétrée
		$req2 = "SELECT mailClient, pseudoClient FROM Client WHERE mailClient = :psClient OR pseudoCLient = :pseudoClient";
		// on prépare la requête
		$lesClients = oci_parse($connect, $req2);
			
		// il faut passer par une variable pour contenir la valeur
		$email = $_POST['id']; 
		$login = $_POST['id']; 

		// on lie la valeur au paramètre de la requête
		oci_bind_by_name($lesClients, ":psClient", $email);
		oci_bind_by_name($lesClients, ":pseudoClient", $login);
		
		// on execute la requete
		$result = oci_execute($lesClients);
		// pas d'erreur Oracle ici car un select qui ne ramene rien n'est pas une erreur, c'est un résultat...
		
		
		$lesMail = oci_fetch_array($lesClients);
		$leMail = $lesMail[0];
		$lePseudo = $lesMail[1];
		
		if ($email == $leMail || $login == $lePseudo) {
			header('location: FormConnexionCompte.php?id='.$email);
		}else{
			if(strpos($email,'@')){
				header('location: FormCreationCompte.php?email='.$email);
			}else if(isset($login)){
				header('location: FormCreationCompte.php?id='.$login);
			}
		}
	}//print($email.'/'.$result.'/'.$lesClients);
?>