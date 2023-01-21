<html>

<head>
    <title>La Parure Française - Les sous-catégories</title>
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
    $req = "SELECT C2.nomCategorie, C2.idCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie AND C2.genreCategorie LIKE :gCategorie";
    $lesCategories = oci_parse($connect, $req);
    $category = htmlentities($_GET['nomCateg']);
    $genre = htmlentities($_GET['genre']);
    $genre_query = "%".$genre."%";
    oci_bind_by_name($lesCategories, ":pCategorie", $category);
    oci_bind_by_name($lesCategories, ":gCategorie", $genre_query);
    $result = oci_execute($lesCategories);
    if (!$result) {
        $e = oci_error($lesCategories);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    include_once("./functions/displayCategorie.php");
    echo "<H1 style='font-weight: bold; color: #0000EE;'> ". replace_accents($category)."</H1>";
    while (($categ = oci_fetch_assoc($lesCategories)) != false) {
        // echo $categ['NOMCATEGORIE'];
        // echo "<br/>";
        display_cat_sub($categ['NOMCATEGORIE'], $categ['IDCATEGORIE'], $genre);
    }
    oci_free_statement($lesCategories);
    ?>

    <?php include("./include/footer.php"); ?>
</body>

</html>