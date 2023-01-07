<?php
include("connect.inc.php");
$var = array();
$cptInsert = 0;
$cptRecupP = 0;
var_dump($_POST);
session_start();

if($_SERVER['REQUEST_METHOD'] == "POST" AND isset($_POST['AffQtePan']) AND $GLOBALS['cptInsert'] < 1)
{
    $req = "SELECT * FROM Panier WHERE idPanier = :pIdPan";
    $lePanier = oci_parse($connect, $req);
    $sessPan = session_id();
    oci_bind_by_name($lePanier, ":pIdPan", $sessPan);
    $resultat = oci_execute($lePanier);
    if (!$resultat) {
        $f = oci_error($lePanier);
        print htmlentities($f['message'] . ' pour cette requete : ' . $f['sqltext']);
    }
    while (($panier = oci_fetch_assoc($lePanier)) != false) {
        $var[$cptRecupP][0] = $panier['IDPANIER'];
        $var[$cptRecupP][1] = $panier['IDDETAILPRODUIT'];
        $var[$cptRecupP][2] = $panier['NOMPRODUIT'];
        $var[$cptRecupP][3] = $panier['DESCRIPTIONPRODUIT'];
        $var[$cptRecupP][4] = $panier['TAILLEPRODUIT'];
        $var[$cptRecupP][5] = $panier['COLORISPRODUIT'];
        $var[$cptRecupP][6] = $panier['PRIXPRODUIT'];
        $var[$cptRecupP][7] = $panier['QTEPANIER'];
        $cptRecupP = $cptRecupP + 1;
    }
    oci_free_statement($lePanier);

    $varCheck = sizeof($var);
    if (sizeof($var) == 0) {
        $varCheck = $varCheck + 1;
    }    
    for($i = 0; $i < $varCheck; $i++) {

    if ($var[$i][0] == session_id() && $var[$i][1] == $_GET["id"] 
    && $var[$i][4] == $_GET["size"] && $var[$i][5] == $_GET["coloris"])
    {
        $reqUpdate = "UPDATE Panier SET qtePanier = :nvQte WHERE idPanier = :pIdPanierU AND idDetailProduit = :pIdProduitU AND tailleProduit = :pTailleProduitU AND colorisProduit = :pColorisProduitU AND qtePanier = :pQuantitePanierU";
        $updatePanier = oci_parse($connect, $reqUpdate);
        $nouvelleQuantite = $_POST["AffQtePan"];
        $idUserPanier = $var[$i][0];
        $idDetailProdPanier = $var[$i][1];
        $tailleProdPanier = $var[$i][4];
        $colorProdPanier = $var[$i][5];
        $qteProdPanier = $var[$i][7];
        oci_bind_by_name($updatePanier, ":nvQte", $nouvelleQuantite);
        oci_bind_by_name($updatePanier, ":pIdPanierU", $idUserPanier);
        oci_bind_by_name($updatePanier, ":pIdProduitU", $idDetailProdPanier);
        oci_bind_by_name($updatePanier, ":pTailleProduitU", $tailleProdPanier);
        oci_bind_by_name($updatePanier, ":pColorisProduitU", $colorProdPanier);
        oci_bind_by_name($updatePanier, ":pQuantitePanierU", $qteProdPanier);

        $resultPanier = oci_execute($updatePanier);
        if (!$resultPanier) {
            $g = oci_error($updatePanier); 
            print htmlentities($g['message'].' pour cette requete : '.$g['sqltext']);		
        }
        oci_commit($connect);
        oci_free_statement($updatePanier);
        echo "succès";
        header("Location: Panier.php");
    }
    }
}
?>