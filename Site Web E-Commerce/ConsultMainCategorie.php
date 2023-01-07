<html>

<head>
    <title>La Parure Française - Les catégories</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-categorie.css">
</head>

<body>

    <?php 
    include("./include/header.php"); 
    ?>

    <?php
    include("connect.inc.php");
    $req = "SELECT C.nomCategorie FROM Categorie C WHERE C.idCategoriePere IS NULL AND C.genreCategorie LIKE :gCategorie";
    $lesCategories = oci_parse($connect, $req);
    $genre = $_GET['genre'];
    $genre_query = "%".$genre."%";
    oci_bind_by_name($lesCategories, ":gCategorie", $genre_query);
    $result = oci_execute($lesCategories);
    if (!$result) {
        $e = oci_error($lesCategories);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    include_once("./functions/displayCategorie.php");
    $full_genre = $genre == "H" ? "Homme" : "Femme";
    echo "<H1> Catégories d'habits pour ". $full_genre ." </H1>";
    while (($categ = oci_fetch_assoc($lesCategories)) != false) {
        // echo $categ['NOMCATEGORIE'];
        // echo "<br/>";
        display_cat_main($categ['NOMCATEGORIE'], $genre);
    }
    oci_free_statement($lesCategories);
    ?>

    <?php include("./include/footer.php"); ?>
</body>

</html>