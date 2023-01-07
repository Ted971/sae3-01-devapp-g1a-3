<html>

<head>
    <title>Consultation Catégorie</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-categorie.css">
    <link rel="stylesheet" type="text/css" href="include/style-results.css">
    <link rel="stylesheet" type="text/css" href="include/style-prod.css">
</head>

<body>

    <?php 
    include("./include/header.php"); 
    ?>

    <?php
    include("connect.inc.php");
    $req = "SELECT P.nomProduit, P.idProduit, C.colorisProduit, C.tailleProduit, D.matiereProduit, D.descriptionProduit, D.genreProduit, D.prixProduit, C.qteStockee FROM Produit P, DetailProduit D, Caracteristiques C WHERE P.idProduit = :pidProd AND P.idProduit = D.idProduit AND D.idDetailProduit = C.idDetailProduit";
    $reqCount = "SELECT SUM(count) AS COUNT FROM
    (SELECT COUNT(D.idDetailProduit) as count 
    FROM Produit P, DetailProduit D, Caracteristiques C 
    WHERE P.idProduit = :pidProduit AND P.idProduit = D.idProduit AND D.idDetailProduit = C.idDetailProduit
    group by P.nomProduit, P.idProduit, C.colorisProduit, C.tailleProduit, D.matiereProduit, D.descriptionProduit, D.genreProduit, D.prixProduit, C.qteStockee)";
    $leProduit = oci_parse($connect, $req);
    $idProd = htmlentities($_GET['id']);
    oci_bind_by_name($leProduit, ":pidProd", $idProd);
    $result = oci_execute($leProduit);
    if (!$result) {
        $e = oci_error($leProduit);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    $DetailProd = oci_parse($connect, $reqCount);
    $idProduit = htmlentities($_GET['id']);
    oci_bind_by_name($DetailProd, ":pidProduit", $idProduit);
    $resultCount = oci_execute($DetailProd);
    include_once("./functions/displayCategorie.php");
    echo "<H1> Page du produit n°".$idProd." </H1>";
    ?>
    <div class="productAlign"> 
    <?php
    while (($prodCount = oci_fetch_assoc($DetailProd)) == true) {
        count_prod($prodCount["COUNT"]);
   }
    while ((($prod = oci_fetch_assoc($leProduit)) != false)) {
        // echo $categ['NOMCATEGORIE'];
        // echo "<br/>";
        display_detail_prod($prod['NOMPRODUIT'], $prod['IDPRODUIT'], $prod["COLORISPRODUIT"], $prod["TAILLEPRODUIT"], $prod["MATIEREPRODUIT"], $prod["DESCRIPTIONPRODUIT"], $prod["PRIXPRODUIT"], $prod["QTESTOCKEE"], "defaultImage.jpg");
    }
    oci_free_statement($leProduit);
    oci_free_statement($DetailProd);
    ?>
    </div>
    <?php include("./include/footer.php"); ?>
    
</body>

</html>