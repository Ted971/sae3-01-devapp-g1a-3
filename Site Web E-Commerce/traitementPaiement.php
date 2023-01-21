<?php
var_dump($_POST);
error_reporting(0);
session_start();

$checkCB = str_replace(' ', '', $_POST['cb']);
echo strlen($checkCB);
echo "</br>";
echo strlen($_POST['CVV']);
echo "</br>";
echo strlen($_POST['expiration']);
echo $_POST['expiration'];

if (strlen($checkCB) != 16 || strlen($_POST['CVV']) != 3 || strlen($_POST['expiration']) != 5) {
    $_SESSION['message'] = 'no';
    header('Location: recapitulatifCommande.php');
} else {
require_once('connect.inc.php');
$reqPanCom = "SELECT * FROM Client C WHERE C.pseudoClient = :pidClient";
$TraPanCom = oci_parse($connect, $reqPanCom);
$sessComm = $_SESSION['nom'];
oci_bind_by_name($TraPanCom, ":pidClient", $sessComm);
$resultCom = oci_execute($TraPanCom);
if (!$resultCom) {
    $x = oci_error($TraPanCom);
    print htmlentities($x['message'] . ' pour cette requete : ' . $x['sqltext']);
}
$idClient = '';
while (($comm = oci_fetch_assoc($TraPanCom)) != false) {
    $idClient = $comm['IDCLIENT'];
}
oci_free_statement($TraPanCom);

$reqIns = "INSERT INTO Paiement (idPaiement, numCarte, nomCarte, cvvCarte, expiCarte, idClient) VALUES (seq_paiement.NEXTVAL, :pidNum, :pidNom, :pidCvv, :pidExpi, :pidCli)";
$InsertPaie = oci_parse($connect, $reqIns);
$numCarte = str_replace(' ', '', $_POST['cb']);
$nomCarte = $_SESSION['nom'];
$cvvCarte = $_POST['CVV'];
$expiCarte = $_POST['expiration'];

oci_bind_by_name($InsertPaie, ":pidNum", $numCarte);
oci_bind_by_name($InsertPaie, ":pidNom", $nomCarte);
oci_bind_by_name($InsertPaie, ":pidCvv", $cvvCarte);
oci_bind_by_name($InsertPaie, ":pidCli",  $idClient);
oci_bind_by_name($InsertPaie, ":pidExpi", $expiCarte);

$resultPaie = oci_execute($InsertPaie);
if (!$resultPaie) {
    $q = oci_error($InsertPaie);
    print htmlentities($q['message'] . ' pour cette requete : ' . $q['sqltext']);
}
oci_commit($connect);
oci_free_statement($InsertPaie);

header('Location: recapitulatifCommande.php');
exit();
}
?>