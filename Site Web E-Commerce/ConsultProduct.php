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

    $tri = array("tri par prix croissant",
                "tri par prix décroissant",
                "A-Z",
                "Z-A"
            );
    echo "<form action = 'ConsultProduct.php?nomSousCateg=".$_GET['nomSousCateg']."&genre=".$_GET['genre']."' method = 'POST'>";
    echo "<select name='tri' onchange='this.form.submit()'>
    <option disabled selected value> -- Tri -- </option>";
      if (isset($_POST['tri'])){
        for($i=0; $i<4; $i++){
            if($tri[$i] != $_POST['tri']){
                echo "<option>$tri[$i]</option>";
            } else {
                echo "<option value='" . $_POST['tri'] . "' selected='selected'>" . $_POST['tri'] . "</option>";
            }
        }
	}else{
        echo "<option>tri par prix croissant</option>";
        echo "<option>tri par prix décroissant</option>";
        echo "<option>A-Z</option>";
        echo "<option>Z-A</option>";
    }
    echo "</select>";
    echo "<noscript><input type='submit' value='Submit'></noscript>";
    echo "</form>";

    $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie";
    if (isset($_POST['tri'])){
        if($_POST['tri'] == "tri par prix croissant"){
            $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie ORDER BY prixProduit ASC";
        }

         if($_POST['tri'] == "tri par prix décroissant"){
            $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie ORDER BY prixProduit DESC";
        }

        if($_POST['tri'] == "A-Z"){
            $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie ORDER BY nomProduit ASC";
        }

        if($_POST['tri'] == "Z-A"){
            $req = "SELECT P.nomProduit, P.idProduit, D.prixProduit FROM Categorie C, Produit P, DetailProduit D WHERE C.nomCategorie = :pCategorie AND P.idCategorie = C.idCategorie AND D.idProduit = P.idProduit AND D.genreProduit LIKE :gCategorie ORDER BY nomProduit DESC";
        }
    }
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