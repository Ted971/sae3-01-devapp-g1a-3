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
    <link rel="shortcut icon" href="images/favicon.ico" /> 

</head>
<body>
    
    <?php include_once("./include/header.php"); ?>
    <?php 
    require_once('connect.inc.php');
    echo "<a href='admin.php'>Revenir</a>";
    echo "<div style = 'padding-bottom: 3%'> </div>";
    $reqForm = "SELECT * FROM FORMULAIRE F, CLIENT C WHERE F.idClient = C.idClient ORDER BY C.idClient ASC";
    $selectionform = oci_parse($connect,$reqForm);
    $resultForm = oci_execute($selectionform);
    if (!$resultForm) {
    $z = oci_error($resultForm);
    print htmlentities($z['message'] . ' pour cette requete : ' . $z['sqltext']);
    }
    while (($recup = oci_fetch_assoc($selectionform)) != false) {
    echo ($recup['PRENOMCLIENT']." ".$recup['NOMCLIENT']." - ".$recup['MAILFORMULAIRE']." : ".$recup['TITREFORMULAIRE']." - ".$recup['MESSAGEFORMULAIRE']);
}
    ?>
    <?php include_once("./include/footer.php"); ?>
    </body>
    </html>