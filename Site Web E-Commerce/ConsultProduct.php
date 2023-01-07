<html>

<head>
    <title>La Parure Française - Les produits</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-categorie.css">
    <link rel="stylesheet" type="text/css" href="include/style-results.css">
</head>

<body>

    <?php 
    include("./include/header.php"); 
    ?>

    <?php
    include("connect.inc.php");
    $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie";
    $lesProduits = oci_parse($connect, $req);
    $category = htmlentities($_GET['nomSousCateg']);
    $genre = htmlentities($_GET['genre']);
    $genre_query = "%".$genre."%";
    oci_bind_by_name($lesProduits, ":pCategorie", $category);
    oci_bind_by_name($lesProduits, ":gCategorie", $genre_query);
    $result = oci_execute($lesProduits);
    if (!$result) {
        $e = oci_error($lesProduits);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    include_once("./functions/displayCategorie.php");
    echo "<H1> Liste des produits - ". replace_accents($category)." : </H1>";
    ?>
    <div class="productAlign"> 
    <?php
    while (($prod = oci_fetch_assoc($lesProduits)) != false) {
        // echo $categ['NOMCATEGORIE'];
        // echo "<br/>";
        display_prod($prod['NOMPRODUIT'],$prod['PRIXPRODUIT'],"defaultImage.jpg", $prod["IDPRODUIT"]);
    }
    oci_free_statement($lesProduits);
    ?>
    </div>
    <?php include("./include/footer.php"); ?>
    
</body>

</html>