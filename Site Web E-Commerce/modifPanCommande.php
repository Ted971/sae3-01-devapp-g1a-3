<?php
error_reporting(-1);
require_once("connect.inc.php");
session_start();
$nbProdPanier = 0;

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
            header('Location: erreur.php');
            exit();
        }
    }
}
oci_free_statement($PanCheck);

$reqVerifPanier = "SELECT COUNT(*) AS COUNTPROD FROM Panier P WHERE P.idPanier = :pIdPan";
$verifPanier = oci_parse($connect, $reqVerifPanier);
$sessPanierVer = session_id();
oci_bind_by_name($verifPanier, ":pIdPan", $sessPanierVer);
$resultVerifi = oci_execute($verifPanier);
if (!$resultVerifi) {
    $t = oci_error($verifPanier);
    print htmlentities($t['message'] . ' pour cette requete : ' . $t['sqltext']);
}
while (($count = oci_fetch_assoc($verifPanier)) != false) {
    $nbProdPanier = $count['COUNTPROD'];
}
oci_free_statement($verifPanier);


if (!isset($_SESSION['acces'])) {
    header('Location:FormConnexion.php');
} else if ($nbProdPanier == 0) {
    header('Location:index.php');
} else {
    
    $req = "SELECT idClient FROM CLIENT WHERE pseudoClient = :pidClient";
    $nomC = oci_parse($connect, $req);
    $nomCli = $_SESSION['nom'];
    oci_bind_by_name($nomC, ":pidClient", $nomCli);
    $resultCli = oci_execute($nomC);
    if (!$resultCli) {
        $e = oci_error($nomC);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    $idCli = 0;
    while (($client = oci_fetch_assoc($nomC)) != false) {
        $idCli = $client['IDCLIENT'];
    }
    oci_free_statement($nomC);

    $reqPaiement = "SELECT idPaiement FROM PAIEMENT WHERE idClient = :pidCli AND numCarte = :pNumCarte AND cvvCarte = :pCvvCarte";
    $paiementC = oci_parse($connect, $reqPaiement);
    $idClient = $idCli;
    $numCarte = $_POST['paie'];
    $arrayNumCarte = explode("-",$numCarte);
    $numCarte = $arrayNumCarte[0];
    $cvvCarte = $arrayNumCarte[1];
    oci_bind_by_name($paiementC, ":pidCli", $idClient);
    oci_bind_by_name($paiementC, ":pNumCarte", $numCarte);
    oci_bind_by_name($paiementC, ":pCvvCarte", $cvvCarte);

    $resultPaie = oci_execute($paiementC);
    if (!$resultPaie) {
        $r = oci_error($paiementC);
        print htmlentities($r['message'] . ' pour cette requete : ' . $r['sqltext']);
    }
    $idPaiement = 0;
    while (($paiement = oci_fetch_assoc($paiementC)) != false) {
        $idPaiement = $paiement['IDPAIEMENT'];
    }
    oci_free_statement($paiementC);

    $reqInsCom = "INSERT INTO COMMANDE (idCommande, idPaiement, idClient, dateCommande) VALUES (seq_commande.NEXTVAL, :pidPaiement, :pidClient, :pDate)";
    $InsertCom = oci_parse($connect, $reqInsCom);
    $idClientCom = $idCli;
    $idPaiementCom = $idPaiement;
    $dteJour = strtoupper(date("j/M/Y", time()));
    oci_bind_by_name($InsertCom, ":pidPaiement", $idPaiementCom);
    oci_bind_by_name($InsertCom, ":pidClient", $idClientCom);
    oci_bind_by_name($InsertCom, ":pDate", $dteJour);
    $result = oci_execute($InsertCom);
    if (!$result) {
        $x = oci_error($InsertCom);
        print htmlentities($x['message'] . ' pour cette requete : ' . $x['sqltext']);
    }
    oci_commit($connect);
    oci_free_statement($InsertCom);

    $reqPanCom = "SELECT * FROM Panier P WHERE P.idPanier = :pIdPan";
    $TraPanCom = oci_parse($connect, $reqPanCom);
    $sessComm = session_id();
    oci_bind_by_name($TraPanCom, ":pIdPan", $sessComm);
    $resultCom = oci_execute($TraPanCom);
    if (!$resultCom) {
        $x = oci_error($TraPanCom);
        print htmlentities($x['message'] . ' pour cette requete : ' . $x['sqltext']);
    }
    $j=0;
    $maximum = 0;
    while (($comm = oci_fetch_assoc($TraPanCom)) != false) {
        if ($j == 0) {
            $j = $j + 1;
            $reqlastIndice = "SELECT MAX(idCommande) AS MAXI FROM Commande";
            $lastIndice = oci_parse($connect, $reqlastIndice);
            $resultIndice = oci_execute($lastIndice);
            if (!$resultIndice) {
                $x = oci_error($lastIndice);
                print htmlentities($x['message'] . ' pour cette requete : ' . $x['sqltext']);
            }
            while (($indice = oci_fetch_assoc($lastIndice)) != false) {
                $maximum = $indice['MAXI'] + 1;
            }
            oci_free_statement($lastIndice);
        }
        $reqInsDet = "INSERT INTO Constituer (idCommande, idProduit, qteCommandee, colorisProduit, tailleProduit) VALUES (:pidDetCom, :pidDetProd, :pidDetQte, :pidDetCol, :pidDetSize)";
        $InsertDet = oci_parse($connect, $reqInsDet);
        $idCommandeDet = $maximum-1;
        $idProduitDet = $comm['IDDETAILPRODUIT'];
        $qteDet = $comm['QTEPANIER'];
        $colorDet = $comm['COLORISPRODUIT'];
        $tailleDet = $comm['TAILLEPRODUIT'];
        oci_bind_by_name($InsertDet, ":pidDetCom", $idCommandeDet);
        oci_bind_by_name($InsertDet, ":pidDetProd", $idProduitDet);
        oci_bind_by_name($InsertDet, ":pidDetQte", $qteDet);
        oci_bind_by_name($InsertDet, ":pidDetCol", $colorDet);
        oci_bind_by_name($InsertDet, ":pidDetSize", $tailleDet);

        $resultDet = oci_execute($InsertDet);
        if (!$resultDet) {
            $v = oci_error($InsertDet);
            print htmlentities($v['message'] . ' pour cette requete : ' . $v['sqltext']);
        }
        oci_commit($connect);
        oci_free_statement($InsertDet);

        $reqUpdPan = "UPDATE Caracteristiques SET qteStockee = qteStockee - :pQtePrise WHERE idDetailProduit = :pidPanProd AND colorisProduit = :pidPanCol AND tailleProduit = :pidPanSize";
        $UpdatePan = oci_parse($connect, $reqUpdPan);
        $idProduitPan = $comm['IDDETAILPRODUIT'];
        $qtePan = $comm['QTEPANIER'];
        $colorPan = $comm['COLORISPRODUIT'];
        $taillePan = $comm['TAILLEPRODUIT'];
        oci_bind_by_name($UpdatePan, ":pidPanProd", $idProduitPan);
        oci_bind_by_name($UpdatePan, ":pQtePrise", $qtePan);
        oci_bind_by_name($UpdatePan, ":pidPanCol", $colorPan);
        oci_bind_by_name($UpdatePan, ":pidPanSize", $taillePan);

        $resultPan = oci_execute($UpdatePan);
        if (!$resultPan) {
            $y = oci_error($UpdatePan);
            print htmlentities($y['message'] . ' pour cette requete : ' . $y['sqltext']);
        }
        oci_commit($connect);
        oci_free_statement($UpdatePan);
    }
    oci_free_statement($TraPanCom);

    $reqInsLiv = "INSERT INTO LIVRAISON (idClient, idCommande, adresseLivraison) VALUES (:pidClient, :pidCommande, :pAdresseLivraison)";
    $InsertLiv = oci_parse($connect, $reqInsLiv);
    $idClientCom = $idCli;
    $idPaiementCom = $maximum-1;
    $AdresseLivraison = $_POST['liv'];
    oci_bind_by_name($InsertLiv, ":pidClient", $idClientCom);
    oci_bind_by_name($InsertLiv, ":pidCommande", $idPaiementCom);
    oci_bind_by_name($InsertLiv, ":pAdresseLivraison", $AdresseLivraison);

    $resultLiv = oci_execute($InsertLiv);
    if (!$resultLiv) {
        $o = oci_error($InsertLiv);
        print htmlentities($o['message'] . ' pour cette requete : ' . $o['sqltext']);
    }
    oci_commit($connect);
    oci_free_statement($InsertLiv);

    $reqDeletePan = "DELETE FROM Panier P WHERE P.idPanier = :pIdLastPan";
    $DeletePanier = oci_parse($connect, $reqDeletePan);
    $sessPanier = session_id();
    oci_bind_by_name($DeletePanier, ":pIdLastPan", $sessPanier);
    $resultDelete = oci_execute($DeletePanier);
    if (!$resultDelete) {
        $u = oci_error($DeletePanier);
        print htmlentities($u['message'] . ' pour cette requete : ' . $u['sqltext']);
    }
    oci_commit($connect);
    oci_free_statement($DeletePanier);
    header('Location: CommandePass.php');
}
?>