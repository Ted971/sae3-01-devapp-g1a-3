<?php
include("connect.inc.php");
$cptInsert = 0;
$var = array();
$varget = 0;
$cptRecupP = 0;
session_start();    
echo session_id();

if($_SERVER['REQUEST_METHOD'] == "POST" AND isset($_POST['Ajout']) AND $GLOBALS['cptInsert'] < 1)
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

    if (sizeof($var) != 0) {
    for($i = 0; $i < sizeof($var); $i++) {
        echo "a";

    if ($var[$i][0] == session_id() && $var[$i][1] == $_GET["id"] 
    && $var[$i][2] == $_GET["nomProd"] && $var[$i][3] == $_GET["descProd"]
    && $var[$i][4] == $_POST["LDTaille"] && $var[$i][5] == $_POST["LDColor"]
    && $var[$i][6] == $_GET["prixProd"] )  {
        $reqVerifQuantite = 'SELECT * FROM Caracteristiques WHERE idDetailProduit = :idProdVerif AND colorisProduit = :idColVerif AND tailleProduit = :idSizeVerif';
        $reqVerQte = oci_parse($connect,$reqVerifQuantite);
        $idProdVer = $_GET["id"];
        $idColorVer = $var[$i][5];
        $idSizeVer = $var[$i][4];
        oci_bind_by_name($reqVerQte,":idProdVerif",$idProdVer);
        oci_bind_by_name($reqVerQte,":idColVerif",$idColorVer);
        oci_bind_by_name($reqVerQte,":idSizeVerif",$idSizeVer);
        $resultVerif = oci_execute($reqVerQte);
        if (!$resultVerif) {
            $n = oci_error($reqVerQte); 
            print htmlentities($n['message'].' pour cette requete : '.$n['sqltext']);		
        }
        while (($resultVer = oci_fetch_assoc($reqVerQte)) != false) {
            $varget = $resultVer['QTESTOCKEE'];
        }
        oci_free_statement($reqVerQte);
        echo $varget;

        if ($varget >= ($var[$i][7] + $_POST["quantiteSelectionne"])) {
        $reqUpdate = "UPDATE Panier SET qtePanier = :nvQte WHERE idPanier = :pIdPanierU AND idDetailProduit = :pIdProduitU AND tailleProduit = :pTailleProduitU AND colorisProduit = :pColorisProduitU AND qtePanier = :pQuantitePanierU";
        $updatePanier = oci_parse($connect, $reqUpdate);
        $nouvelleQuantite = $var[$i][7] + $_POST["quantiteSelectionne"];
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
        $reqPanCheck = "SELECT * FROM Panier P WHERE P.idPanier = :pIdPan";
        $PanCheck = oci_parse($connect, $reqPanCheck);
        $sessComm = session_id();
        oci_bind_by_name($PanCheck, ":pIdPan", $sessComm);
        $resultCheck = oci_execute($PanCheck);
        if (!$resultCheck) {
            $k = oci_error($PanCheck);
            print htmlentities($k['message'] . ' pour cette requete : ' . $k['sqltext']);
        }
        $j=0;
        while (($check = oci_fetch_assoc($PanCheck)) != false) {
            $reqCaracCheck = "SELECT qteStockee FROM Caracteristiques P WHERE idDetailProduit = :pidPanProd AND colorisProduit = :pidPanCol AND tailleProduit = :pidPanSize";
            $CaracPanCheck = oci_parse($connect, $reqCaracCheck);
            $idProduitPan = $check['IDDETAILPRODUIT'];
            $colorPan = $check['COLORISPRODUIT'];
            $taillePan = $check['TAILLEPRODUIT'];
            oci_bind_by_name($CaracPanCheck, ":pidPanProd", $idProduitPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanCol", $colorPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanSize", $taillePan);
            $resultCaracCheck = oci_execute($CaracPanCheck);
            if (!$resultCaracCheck) {
                $u = oci_error($CaracPanCheck);
                print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
            }
            while (($carac = oci_fetch_assoc($CaracPanCheck)) != false) {
                if ($carac['QTESTOCKEE'] - $check['QTEPANIER'] < 0) {
                    $reqDeletePan = "DELETE FROM Panier P WHERE P.idPanier = :pIdLastPan AND P.idDetailProduit = :pidProd AND P.tailleProduit = :pTaille AND P.colorisProduit = :pColor ";
                    $DeletePanier = oci_parse($connect, $reqDeletePan);
                    $sessPanier = session_id();
                    oci_bind_by_name($DeletePanier, ":pIdLastPan", $sessPanier);
                    oci_bind_by_name($DeletePanier, ":pidProd", $idProduitPan);
                    oci_bind_by_name($DeletePanier, ":pTaille", $taillePan);
                    oci_bind_by_name($DeletePanier, ":pColor", $colorPan);
                    $resultDelete = oci_execute($DeletePanier);
                    if (!$resultDelete) {
                        $u = oci_error($DeletePanier);
                        print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
                    }
                    oci_free_statement($DeletePanier);
                    oci_commit($connect);
                    header('Location: erreurPan.php');
                    exit();
                }
            }
        }
        oci_free_statement($PanCheck);
        $_SESSION['message'] = "Ajouté au Panier !";
        echo $_SESSION['message'];
        header("Location: ConsultOneProduct.php?id=$idDetailProdPanier");
        } else {
            $reqPanCheck = "SELECT * FROM Panier P WHERE P.idPanier = :pIdPan";
            $PanCheck = oci_parse($connect, $reqPanCheck);
            $sessComm = session_id();
            oci_bind_by_name($PanCheck, ":pIdPan", $sessComm);
            $resultCheck = oci_execute($PanCheck);
            if (!$resultCheck) {
                $k = oci_error($PanCheck);
                print htmlentities($k['message'] . ' pour cette requete : ' . $k['sqltext']);
            }
            $j=0;
            while (($check = oci_fetch_assoc($PanCheck)) != false) {
                $reqCaracCheck = "SELECT qteStockee FROM Caracteristiques P WHERE idDetailProduit = :pidPanProd AND colorisProduit = :pidPanCol AND tailleProduit = :pidPanSize";
                $CaracPanCheck = oci_parse($connect, $reqCaracCheck);
                $idProduitPan = $check['IDDETAILPRODUIT'];
                $colorPan = $check['COLORISPRODUIT'];
                $taillePan = $check['TAILLEPRODUIT'];
                oci_bind_by_name($CaracPanCheck, ":pidPanProd", $idProduitPan);
                oci_bind_by_name($CaracPanCheck, ":pidPanCol", $colorPan);
                oci_bind_by_name($CaracPanCheck, ":pidPanSize", $taillePan);
                $resultCaracCheck = oci_execute($CaracPanCheck);
                if (!$resultCaracCheck) {
                    $u = oci_error($CaracPanCheck);
                    print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
                }
                while (($carac = oci_fetch_assoc($CaracPanCheck)) != false) {
                    if ($carac['QTESTOCKEE'] - $check['QTEPANIER'] < 0) {
                        $reqDeletePan = "DELETE FROM Panier P WHERE P.idPanier = :pIdLastPan AND P.idDetailProduit = :pidProd AND P.tailleProduit = :pTaille AND P.colorisProduit = :pColor ";
                        $DeletePanier = oci_parse($connect, $reqDeletePan);
                        $sessPanier = session_id();
                        oci_bind_by_name($DeletePanier, ":pIdLastPan", $sessPanier);
                        oci_bind_by_name($DeletePanier, ":pidProd", $idProduitPan);
                        oci_bind_by_name($DeletePanier, ":pTaille", $taillePan);
                        oci_bind_by_name($DeletePanier, ":pColor", $colorPan);
                        $resultDelete = oci_execute($DeletePanier);
                        if (!$resultDelete) {
                            $u = oci_error($DeletePanier);
                            print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
                        }
                        oci_free_statement($DeletePanier);
                        oci_commit($connect);
                        header('Location: erreurPan.php');
                        exit();
                    }
                }
            }
            oci_free_statement($PanCheck);
            $_SESSION['message'] = "Vous avez déjà atteint la maximum de ce produits dans votre panier !";
            echo $_SESSION['message'];
            header("Location: ConsultOneProduct.php?id=$idProdVer");
        }

    } 
    else if ($GLOBALS['cptInsert'] < 1 && $i == sizeof($var)-1){
        $GLOBALS['cptInsert'] = $GLOBALS['cptInsert'] + 1;
        $reqInsert = "INSERT INTO Panier (idPanier, idDetailProduit, nomProduit, descriptionProduit, tailleProduit, colorisProduit, prixProduit, qtePanier) VALUES(:pIdPanier, :pIdP, :pNomP, :pDescP, :pSizeP, :pColP, :pPrixP, :pQteP)";						 
        $insertPanier = oci_parse($connect, $reqInsert);
        $idUser = session_id();
        $idDetailProd = $_GET["id"];
        $nomProd = $_GET["nomProd"];
        $descProd = $_GET["descProd"] ; 
        $sizeProd = $_POST["LDTaille"];
        $colorProd = $_POST["LDColor"];
        $prixProd = $_GET["prixProd"];
        $qteProd = $_POST["quantiteSelectionne"];
        oci_bind_by_name($insertPanier, ":pIdPanier", $idUser);
        oci_bind_by_name($insertPanier, ":pIdP", $idDetailProd);
        oci_bind_by_name($insertPanier, ":pNomP", $nomProd);
        oci_bind_by_name($insertPanier, ":pDescP", $descProd);
        oci_bind_by_name($insertPanier, ":pSizeP", $sizeProd);
        oci_bind_by_name($insertPanier, ":pColP", $colorProd);
        oci_bind_by_name($insertPanier, ":pPrixP", $prixProd);
        oci_bind_by_name($insertPanier, ":pQteP", $qteProd);

        $result = oci_execute($insertPanier);
        if (!$result) {
            $e = oci_error($insertPanier); 
            print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);		
        }
        oci_commit($connect);
        oci_free_statement($insertPanier);

        $reqPanCheck = "SELECT * FROM Panier P WHERE P.idPanier = :pIdPan";
        $PanCheck = oci_parse($connect, $reqPanCheck);
        $sessComm = session_id();
        oci_bind_by_name($PanCheck, ":pIdPan", $sessComm);
        $resultCheck = oci_execute($PanCheck);
        if (!$resultCheck) {
            $k = oci_error($PanCheck);
            print htmlentities($k['message'] . ' pour cette requete : ' . $k['sqltext']);
        }
        $j=0;
        while (($check = oci_fetch_assoc($PanCheck)) != false) {
            $reqCaracCheck = "SELECT qteStockee FROM Caracteristiques P WHERE idDetailProduit = :pidPanProd AND colorisProduit = :pidPanCol AND tailleProduit = :pidPanSize";
            $CaracPanCheck = oci_parse($connect, $reqCaracCheck);
            $idProduitPan = $check['IDDETAILPRODUIT'];
            $colorPan = $check['COLORISPRODUIT'];
            $taillePan = $check['TAILLEPRODUIT'];
            oci_bind_by_name($CaracPanCheck, ":pidPanProd", $idProduitPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanCol", $colorPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanSize", $taillePan);
            $resultCaracCheck = oci_execute($CaracPanCheck);
            if (!$resultCaracCheck) {
                $u = oci_error($CaracPanCheck);
                print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
            }
            while (($carac = oci_fetch_assoc($CaracPanCheck)) != false) {
                if ($carac['QTESTOCKEE'] - $check['QTEPANIER'] < 0) {
                    $reqDeletePan = "DELETE FROM Panier P WHERE P.idPanier = :pIdLastPan AND P.idDetailProduit = :pidProd AND P.tailleProduit = :pTaille AND P.colorisProduit = :pColor ";
                    $DeletePanier = oci_parse($connect, $reqDeletePan);
                    $sessPanier = session_id();
                    oci_bind_by_name($DeletePanier, ":pIdLastPan", $sessPanier);
                    oci_bind_by_name($DeletePanier, ":pidProd", $idProduitPan);
                    oci_bind_by_name($DeletePanier, ":pTaille", $taillePan);
                    oci_bind_by_name($DeletePanier, ":pColor", $colorPan);
                    $resultDelete = oci_execute($DeletePanier);
                    if (!$resultDelete) {
                        $u = oci_error($DeletePanier);
                        print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
                    }
                    oci_free_statement($DeletePanier);
                    oci_commit($connect);
                    header('Location: erreurPan.php');
                    exit();
                }
            }
        }
        oci_free_statement($PanCheck);

        $_SESSION['message'] = "Ajouté au Panier !";
        echo $_SESSION['message'];
        header("Location: ConsultOneProduct.php?id=$idDetailProd");
    }
    }
    } else {
        $GLOBALS['cptInsert'] = $GLOBALS['cptInsert'] + 1;
        $reqInsert = "INSERT INTO Panier (idPanier, idDetailProduit, nomProduit, descriptionProduit, tailleProduit, colorisProduit, prixProduit, qtePanier) VALUES(:pIdPanier, :pIdP, :pNomP, :pDescP, :pSizeP, :pColP, :pPrixP, :pQteP)";						 
        $insertPanier = oci_parse($connect, $reqInsert);
        $idUser = session_id();
        $idDetailProd = $_GET["id"];
        $nomProd = $_GET["nomProd"];
        $descProd = $_GET["descProd"] ; 
        $sizeProd = $_POST["LDTaille"];
        $colorProd = $_POST["LDColor"];
        $prixProd = $_GET["prixProd"];
        $qteProd = $_POST["quantiteSelectionne"];
        oci_bind_by_name($insertPanier, ":pIdPanier", $idUser);
        oci_bind_by_name($insertPanier, ":pIdP", $idDetailProd);
        oci_bind_by_name($insertPanier, ":pNomP", $nomProd);
        oci_bind_by_name($insertPanier, ":pDescP", $descProd);
        oci_bind_by_name($insertPanier, ":pSizeP", $sizeProd);
        oci_bind_by_name($insertPanier, ":pColP", $colorProd);
        oci_bind_by_name($insertPanier, ":pPrixP", $prixProd);
        oci_bind_by_name($insertPanier, ":pQteP", $qteProd);

        $result = oci_execute($insertPanier);
        if (!$result) {
            $e = oci_error($insertPanier); 
            print htmlentities($e['message'].' pour cette requete : '.$e['sqltext']);		
        }
        oci_commit($connect);
        oci_free_statement($insertPanier);

        $reqPanCheck = "SELECT * FROM Panier P WHERE P.idPanier = :pIdPan";
        $PanCheck = oci_parse($connect, $reqPanCheck);
        $sessComm = session_id();
        oci_bind_by_name($PanCheck, ":pIdPan", $sessComm);
        $resultCheck = oci_execute($PanCheck);
        if (!$resultCheck) {
            $k = oci_error($PanCheck);
            print htmlentities($k['message'] . ' pour cette requete : ' . $k['sqltext']);
        }
        $j=0;
        while (($check = oci_fetch_assoc($PanCheck)) != false) {
            $reqCaracCheck = "SELECT qteStockee FROM Caracteristiques P WHERE idDetailProduit = :pidPanProd AND colorisProduit = :pidPanCol AND tailleProduit = :pidPanSize";
            $CaracPanCheck = oci_parse($connect, $reqCaracCheck);
            $idProduitPan = $check['IDDETAILPRODUIT'];
            $colorPan = $check['COLORISPRODUIT'];
            $taillePan = $check['TAILLEPRODUIT'];
            oci_bind_by_name($CaracPanCheck, ":pidPanProd", $idProduitPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanCol", $colorPan);
            oci_bind_by_name($CaracPanCheck, ":pidPanSize", $taillePan);
            $resultCaracCheck = oci_execute($CaracPanCheck);
            if (!$resultCaracCheck) {
                $u = oci_error($CaracPanCheck);
                print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
            }
            while (($carac = oci_fetch_assoc($CaracPanCheck)) != false) {
                if ($carac['QTESTOCKEE'] - $check['QTEPANIER'] < 0) {
                    $reqDeletePan = "DELETE FROM Panier P WHERE P.idPanier = :pIdLastPan AND P.idDetailProduit = :pidProd AND P.tailleProduit = :pTaille AND P.colorisProduit = :pColor ";
                    $DeletePanier = oci_parse($connect, $reqDeletePan);
                    $sessPanier = session_id();
                    oci_bind_by_name($DeletePanier, ":pIdLastPan", $sessPanier);
                    oci_bind_by_name($DeletePanier, ":pidProd", $idProduitPan);
                    oci_bind_by_name($DeletePanier, ":pTaille", $taillePan);
                    oci_bind_by_name($DeletePanier, ":pColor", $colorPan);
                    $resultDelete = oci_execute($DeletePanier);
                    if (!$resultDelete) {
                        $u = oci_error($DeletePanier);
                        print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
                    }
                    oci_free_statement($DeletePanier);
                    oci_commit($connect);
                    header('Location: erreurPan.php');
                    exit();
                }
            }
        }
        oci_free_statement($PanCheck);

        $_SESSION['message'] = "Ajouté au Panier !";
        echo $_SESSION['message'];
        header("Location: ConsultOneProduct.php?id=$idDetailProd");
    }
}
?>