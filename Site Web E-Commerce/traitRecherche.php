<html>

<head>
    <title> Recherche </title>
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
    </script>
    <?php
    include("connect.inc.php");
    $tri = array("Tri par prix croissant",
                "Tri par prix décroissant",
                "A-Z",
                "Z-A",
                "Homme",
                "Femme"
            );
    echo "<form action = 'traitRecherche.php?recherche=".htmlentities($_GET['recherche'])."' method = 'POST'>";
    echo "<select name='tri' onchange='this.form.submit()'>
    <option disabled selected value> -- Tri -- </option>";
    if (isset($_POST['tri'])){
        for($i=0; $i<6; $i++){
            if($tri[$i] != $_POST['tri']){
                echo "<option>$tri[$i]</option>";
            } else {
                echo "<option value='" . $_POST['tri'] . "' selected='selected'>" . $_POST['tri'] . "</option>";
            }
        }
	}else{
    echo "<option>Tri par prix croissant</option>";
    echo "<option>Tri par prix décroissant</option>";
    echo "<option>A-Z</option>";
    echo "<option>Z-A</option>";
    echo "<option>Homme</option>";
    echo "<option>Femme</option>";
    }
    echo "</select>";
    echo "<noscript><input type='submit' value='Submit'></noscript>";
    echo "</form>";

    $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit";
    if (isset($_POST['tri'])){
        if($_POST['tri'] == "Tri par prix croissant"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit ORDER BY prixProduit ASC";
        }

         if($_POST['tri'] == "Tri par prix décroissant"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit ORDER BY prixProduit DESC";
        }

        if($_POST['tri'] == "A-Z"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit ORDER BY nomProduit";
        }

        if($_POST['tri'] == "Z-A"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit ORDER BY nomProduit DESC";
        }

        if($_POST['tri'] == "Homme"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit AND genreProduit = 'H'";
        }

        if($_POST['tri'] == "Femme"){
            $req = "SELECT * FROM Produit P, DetailProduit D WHERE UPPER(P.nomProduit) LIKE UPPER(:pProduit) AND D.idProduit = P.idProduit AND genreProduit = 'F'";
        }
    }
    
    $lesProduits = oci_parse($connect, $req);
    $recherche = htmlentities($_GET['recherche']);
    $search_query = "%".$recherche."%";
    oci_bind_by_name($lesProduits, ":pProduit", $search_query);
    $result = oci_execute($lesProduits);
    if (!$result) {
        $e = oci_error($lesProduits);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    include_once("./functions/displayCategorie.php");
    echo "<H1> Votre recherche - ".$recherche." : </H1>";
    ?>
    <div class="productAlign"> 
    <?php
    $a = 0;
    while (($prod = oci_fetch_assoc($lesProduits)) != false) {
        display_prod($prod['NOMPRODUIT'],$prod['PRIXPRODUIT'],"defaultImage.jpg", $prod["IDPRODUIT"]);
        $a = $a + 1;
    }
    if ($a == 0){
        echo "<div class>";
        echo  "La recherche ne correspond à aucun article disponible.";
        echo "</div>";
    }
    oci_free_statement($lesProduits);
    ?>
    </div>
    <?php include("./include/footer.php"); ?>
    
</body>

</html>