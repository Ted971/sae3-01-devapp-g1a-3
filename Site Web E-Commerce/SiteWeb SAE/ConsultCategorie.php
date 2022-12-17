<html>

<head>
    <title>Consultation Catégorie</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="include/style.css">

</head>

<body>

    <?php include("./include/header.php"); ?>

    <?php
    include("connect.inc.php");
    $req = "SELECT C2.nomCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie";
    $lesCategories = oci_parse($connect, $req);
    oci_bind_by_name($lesCategories, ":pCategorie", $_GET['nomCateg']);
    $result = oci_execute($lesCategories);
    if (!$result) {
        $e = oci_error($lesCategories);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    echo "<H1> Les Catégories</H1>";
    while (($categ = oci_fetch_assoc($lesCategories)) != false) {
        echo $categ['NOMCATEGORIE'];
        echo "<br/>";
    }
    oci_free_statement($lesCategories);
    ?>

    <?php include("./include/footer.php"); ?>
</body>

</html>