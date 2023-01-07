<html>

<head>
    <title>Consultation Panier</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-categorie.css">
    <link rel="stylesheet" type="text/css" href="include/style-results.css">
    <link rel="stylesheet" type="text/css" href="include/style-prod.css">
    <link rel="stylesheet" type="text/css" href="include/style-panier.css">
</head>

<body>

    <?php 
    include("./include/header.php"); 
    ?>
    <?php 
    include("connect.inc.php");
    $req = "SELECT * FROM Panier WHERE idPanier = :pIdPan";
    $lePanier = oci_parse($connect, $req);
    $sessPan = session_id();
    oci_bind_by_name($lePanier, ":pIdPan", $sessPan);
    $result = oci_execute($lePanier);
    if (!$result) {
        $e = oci_error($lePanier);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    echo "<H1> Votre Panier </H1>";
    $TotalPanier = 0;
    $cpt = 0;
    $var = array();
    while (($panier = oci_fetch_assoc($lePanier)) != false) {
        // echo $categ['NOMCATEGORIE'];
        // echo "<br/>";
        $TotalPanier = $TotalPanier + ($panier['PRIXPRODUIT']*$panier['QTEPANIER']);
        //create a multidimensional array to store every value
        $cptAjt = 0;
        for ($i = 0; $i < sizeof($var); $i++){
            $cpt = $cpt + 1;
        }
        $var[$cpt][0] = $panier['NOMPRODUIT'];
        $var[$cpt][1] = $panier['DESCRIPTIONPRODUIT'];
        $var[$cpt][2] = $panier['IDDETAILPRODUIT'];
        $var[$cpt][3] = $panier['TAILLEPRODUIT'];
        $var[$cpt][4] = $panier['COLORISPRODUIT'];
        $var[$cpt][5] = $panier['QTEPANIER'];

        $cpt = 0;
        /*echo "<pre>";
        print_r($var);
        echo "</pre>";*/
        /*echo "</br>";
        echo $panier['NOMPRODUIT']." ";
        echo $panier['DESCRIPTIONPRODUIT']." ";
        echo "</br>";
        echo $panier['TAILLEPRODUIT']." ";
        echo $panier['COLORISPRODUIT'];
        echo "</br>";
        echo $panier['PRIXPRODUIT'];
        echo "</br>";
        echo $panier['QTEPANIER'];
        echo "</br>";*/
    }
    if ($TotalPanier != 0){
        for ($i = 0; $i < sizeof($var); $i++){
            echo "<div class = 'panier' >";
            $idPan = session_id();
            $idPSuppr = $var[$i][2];
            $colorisPSuppr = $var[$i][4];
            $sizePSuppr = $var[$i][3];
            echo "<form class = 'remove-button' action='traitDeleteProdPan?id=$idPan&idDet=$idPSuppr&coloris=$colorisPSuppr&size=$sizePSuppr' method = 'POST'>";
            echo "<button onclick='this.form.submit()'>&times;</button> </br>";
            echo "</form>";
            for ($j = 0; $j < sizeof($var[$i]); $j++){
                echo $var[$i][$j]."</br>";
                if ($j == 5){
                    $reqPanQte = "SELECT C.qteStockee FROM Caracteristiques C WHERE C.idDetailProduit = :pIdDet AND C.colorisProduit = :pColorP AND C.tailleProduit = :pSizeP";
                    $AffQtePan = oci_parse($connect, $reqPanQte);
                    $idDP = $var[$i][2];
                    $colorisP = $var[$i][4];
                    $sizeP = $var[$i][3];
                    oci_bind_by_name($AffQtePan, ":pIdDet", $idDP);
                    oci_bind_by_name($AffQtePan, ":pColorP", $colorisP);
                    oci_bind_by_name($AffQtePan, ":pSizeP", $sizeP);
                    $result = oci_execute($AffQtePan);
                    if (!$result) {
                        $e = oci_error($AffQtePan);
                        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
                    }
                    while (($pan = oci_fetch_assoc($AffQtePan)) != false) {
                        $valueQuant = $pan['QTESTOCKEE'];
                    }
                    echo "<form id='form' action='modifQte.php?id=$idDP&coloris=$colorisP&size=$sizeP' method='post'>";
                    echo "<select name = 'AffQtePan' id='AffQtePan' onchange='this.form.submit()'>";
                    for ($z = 1; $z <= $valueQuant; $z++) {
                        if ($var[$i][5] == $z) {
                            echo "<option value='$z' selected='selected'>";
                            echo $z;
                            echo "</option>";
                        } else {
                        echo "<option value='$z'>";
                        echo $z;
                        echo "</option>";
                        }
                    }
                    echo "</select>";
                    echo "</form>";
                }
            }
            echo "</div>";
        }
        echo "</br></br> Total du panier : ". $TotalPanier."€";
    } else {
        echo "Votre panier est vide !";
    }
    oci_free_statement($lePanier);
    ?>

    <?php include("./include/footer.php"); ?>
    
</body>

</html>