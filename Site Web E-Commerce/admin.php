<html>
<head>
	<title>Menu administrateur</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-popup.css">
    <link rel="stylesheet" type="text/css" href="include/style-recap-commande.css">
    <link rel="stylesheet" type="text/css" href="include/style-admin.css">
    <link rel="shortcut icon" href="images/favicon.ico" /> 

</head>
<body>
    
    <?php include_once("./include/header.php"); ?>
    <?php 
    require_once('connect.inc.php');
    echo "<div class = 'admin1'><a href='adminProduit.php'>Gestion produit</a></div><br>";
    echo "<div class = 'admin2'><a href='adminCompte.php'>Gestion comptes</a></div><br>";
    echo "<div class = 'admin3'><a href='adminFormulaire.php'>Gestion formulaires de contact</a></div><br>";
    echo "<div class = 'admin4'><a href='adminCreation.php'>Création d'un nouveau compte admin</a></div>";
    ?>
    <?php include_once("./include/footer.php"); ?>
    </body>
    </html>