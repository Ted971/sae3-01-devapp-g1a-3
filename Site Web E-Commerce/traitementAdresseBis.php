<?php
error_reporting(0);
session_start();

if ($_POST['adresse']==''){
    $_SESSION['message'] = 'vide';
    header('Location: FormConnexion.php');
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

$reqIns = "INSERT INTO ADRESSE (idClient, adresseClient) VALUES (:pidCli, :pAdresse)";
$InsertAdresse = oci_parse($connect, $reqIns);
$adresseClient = $_POST['adresse'];

oci_bind_by_name($InsertAdresse, ":pidCli", $idClient);
oci_bind_by_name($InsertAdresse, ":pAdresse", $adresseClient);

$resultAdr = oci_execute($InsertAdresse);
if (!$resultAdr) {
    $f = oci_error($InsertAdresse);
    print htmlentities($f['message'] . ' pour cette requete : ' . $f['sqltext']);
}
oci_commit($connect);
oci_free_statement($InsertAdresse);

header('Location: FormConnexion.php');
exit();
}
?>