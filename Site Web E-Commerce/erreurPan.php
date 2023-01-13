<html>
<head>
	<title>La Parure Française - Accueil</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
	<link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">

</head>

<body>
	<div class="content">
		<?php include_once("./include/header.php"); ?>
		<?php 
        echo "Il semblerait que le produit que vous avez tenté d'ajouter au panier ne soit plus disponible...";
        echo "</br> <a href='index.php'>Retourner à la page d'accueil</a>";
        ?>
	</div>
	<footer>
	<?php include_once("./include/footer.php"); ?>
	</footer>
</body>
</html>