<html>

<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="include/style.css">
	<link rel="stylesheet" type="text/css" href="include/style-footer.css">
	<link rel="stylesheet" type="text/css" href="include/style-header.css">
	<link rel="stylesheet" type="text/css" href="include/style-CorpsPage.css">

</head>

<body>
	<?php include_once("./include/header.php"); ?>
	<div class="contentConnexion">
		<div class="formulaire" style='padding-bottom: 20px; padding-top: 20px; text-align:center;'>
			<span style='font-weight: bold'>Connexion</span> </br>
			<?php
			if (isset($_GET['msgErreurConn'])) {
				echo "<h2>" . htmlentities($_GET['msgErreurConn']) . "</h2>";
			}

			$req2 = "SELECT pseudoClient FROM Client WHERE mailClient = :mailClient OR pseudoClient = :pseudoClient";
			// on prépare la requête
			$lesClients = oci_parse($connect, $req2);

			// il faut passer par une variable pour contenir la valeur
			if (isset($_GET['id'])) {
				$mail = $_GET['id'];
				$pseudo = $_GET['id'];
			}

			// on lie la valeur au paramètre de la requête
			oci_bind_by_name($lesClients, ":mailClient", $mail);
			oci_bind_by_name($lesClients, ":pseudoClient", $pseudo);

			// on execute la requete
			$result = oci_execute($lesClients);
			// pas d'erreur Oracle ici car un select qui ne ramene rien n'est pas une erreur, c'est un résultat...

			$login = '';
			while (($leLoginClient = oci_fetch_array($lesClients))) {
				$login = $leLoginClient['PSEUDOCLIENT'];
			}
			oci_free_statement($lesClients);
			?>
			<form action="TraitConnexion.php" method="POST">
				<div style='padding-bottom: 1px;'> Identifiant / E-mail </div> </br>
				<input type='text' name='login' maxlength="64" <?php
												echo "value='" . $login . "' ";
												?> class="cadreInput" /> </br></br>
				<div style='padding-bottom: 1px;'> Mot de passe </div> </br>
				<input type='password' name='password' class="cadreInput" maxlength="64"/> </br> </br>
				Se souvenir de moi        <input type='checkbox' name='souvenir' /> </br> </br>
				<input type='submit' name='Valider' value='Valider' /> </br></br>
			</form>
			<a style='text-decoration: none; border: 1px solid; border-radius: 50px; color: black;' href='FormCreationCompte.php' title='Nouveau compte'>Créer un compte</a>
		</div>
	</div>
	<?php include_once("./include/footer.php"); ?>
</body>

</html>