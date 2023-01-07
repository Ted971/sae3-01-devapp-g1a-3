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
    include("connect.inc.php");
    $reqPanSuppr = "DELETE FROM Panier P WHERE P.idPanier = :pIdPan AND P.idDetailProduit = :pIdDSuppr AND P.colorisProduit = :pColorSuppr AND P.tailleProduit = :pSizeSuppr";
    $SupprQtePan = oci_parse($connect, $reqPanSuppr);
    $idPan = $_GET['id'];
    $idPSuppr = $_GET['idDet'];
    $colorisPSuppr = $_GET['coloris'];
    $sizePSuppr = $_GET['size'];
    oci_bind_by_name($SupprQtePan, ":pIdPan", $idPan);
    oci_bind_by_name($SupprQtePan, ":pColorSuppr", $colorisPSuppr);
    oci_bind_by_name($SupprQtePan, ":pIdDSuppr", $idPSuppr);
    oci_bind_by_name($SupprQtePan, ":pSizeSuppr", $sizePSuppr);
    $resultSuppr = oci_execute($SupprQtePan);
    if (!$resultSuppr) {
        $W = oci_error($SupprQtePan);
        print htmlentities($W['message'] . ' pour cette requete : ' . $W['sqltext']);
    }
    oci_commit($connect);
    oci_free_statement($SupprQtePan);
    header('Location: Panier.php');
?>

</body>

</html>