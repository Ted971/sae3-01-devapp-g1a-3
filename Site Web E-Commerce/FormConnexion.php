<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="include/style.css">

</head>
<body>
    
    <?php include("./include/header.php"); ?>
    <?php 
        if (isset($_SESSION['acces'])) {
            echo "Vous êtes connecté en tant que ";
            echo $_SESSION['nom'];
        } else { 
            ?>
        <div style="padding-right: 35%; padding-top: 10%">
            Connexion : </br> </br> 
            <?php 
                if (isset($_GET['msgErreurConn'])) {
                    echo "<h2>".htmlentities($_GET['msgErreurConn'])."</h2>";
                }
            ?>
            <form action = "TraitConnexion.php" method = "POST">
                Identifiant : <input type = 'text' name = 'login'
                <?php
                    if (isset($_COOKIE['cookIdent'])) {
                        echo "value='".$_COOKIE['cookIdent']."' ";
                    }
                ?>
                /> </br></br>
                Mot de passe : <input type = 'password' name = 'password'/> </br> </br>
                Se souvenir de moi : <input type = 'checkbox' name = 'souvenir'/> </br> </br>
                <input type = 'submit' name = 'Valider' value = 'Valider'/> </br>
            </form>
        </div>
        <div style="padding-left: 35%; margin-top: -15%">
            Création d'un compte : </br> </br>
            <?php 
                if (isset($_GET['msgErreur'])) {
                    echo "<h2>".htmlentities($_GET['msgErreur'])."</h2>";
                }
            ?>
            <form action = "TraitCreation.php" method = "POST">
                Pseudo : <input type = 'text' name = 'username'/> </br></br>
                Nom : <input type = 'text' name = 'last_name'/> </br></br>
                Prenom : <input type = 'text' name = 'first_name'/> </br></br>
                Date de naissance : <input type = 'date' name = 'date_naiss'/> </br></br>
                Pays : 
                <select name="country" id="country-select">
                    <option value="France">France</option>
                    <option value="Espagne">Espagne</option>
                    <option value="Angleterre">Angleterre</option>
                </select> </br></br>
                Département : <input type = 'number' name = 'departement'/> </br> </br>
                Adresse Mail : <input type = 'email' name = 'mail'/> </br></br>
                Mot de passe : <input type = 'password' name = 'password'/> </br> </br>
                <input type = 'submit' name = 'Valider' value = 'Valider'/> </br>
            </form>
        </div>
        <?php }  ?>
    <?php include("./include/footer.php"); ?>
</body>
</html>