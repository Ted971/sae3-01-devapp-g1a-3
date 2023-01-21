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
    $reqSel = "SELECT * FROM PRODUIT P, DETAILPRODUIT D, CARACTERISTIQUES C WHERE D.idProduit = P.idProduit AND P.idProduit = C.idDetailProduit ORDER BY P.idProduit ASC";
    $selectionprod = oci_parse($connect,$reqSel);
    $resultSelect = oci_execute($selectionprod);
    if (!$resultSelect) {
    $e = oci_error($selectionprod);
    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    $tab = array();
    $tabCol = array();
    $tabSize = array();
    $tabNom = array();
    $tabMat = array();
    $tabDesc = array();
    $tabGenre = array();
    $tabPrix = array();
    $i = 0;
    $test = 0;
    while (($prod = oci_fetch_assoc($selectionprod)) != false) {
        array_push($tab, $prod['IDPRODUIT']);
        array_push($tabCol, $prod['COLORISPRODUIT']);
        array_push($tabSize, $prod['TAILLEPRODUIT']);
        if ($i != 0) {
            if ($tab[$i] != $tab[$i-1]){
            echo"<div style='display: flex;'>";
                                    echo "<input type='text' value='".$prod['NOMPRODUIT']."'>";
                                    echo "<input type='text' value='".$prod['MATIEREPRODUIT']."'>";
                                    echo "<input type='text' value='".$prod['DESCRIPTIONPRODUIT']."'>";
                                    echo "<input type='text' value='".$prod['GENREPRODUIT']."'>";
                                    echo "<input type='text' value='".$prod['PRIXPRODUIT']."'>";
                                    echo "<select>";
                                    $tabVerifCol = array();
                                    $j = 0;
                                    foreach ($tabCol as $result) {
                                        if (!in_array($result, $tabVerifCol)) {
                                            $tabVerifCol[$j] =  $result;
                                            echo "<option value = '$result'>".$result."</option>";
                                        }
                                        $j = $j + 1;
                                    }
                                    echo "</select>";
                                    echo "<select>";
                                    $tabVerifSize = array();
                                    $v = 0;
                                    foreach ($tabSize as $resultSize) {
                                        if (!in_array($resultSize, $tabVerifSize)) {
                                            $tabVerifSize[$v] =  $resultSize;
                                            echo "<option value = '$resultSize'>".$resultSize."</option>";
                                        }
                                        $v = $v + 1;
                                    }
                                    echo "</select>";
                                    echo "<input type='text' value='".$prod['QTESTOCKEE']."'>";
                                echo"</div>";
                            }
                            }
                            $i = $i + 1;
                          
        
    }
    ?>
    <?php include_once("./include/footer.php"); ?>
</body>
</html>