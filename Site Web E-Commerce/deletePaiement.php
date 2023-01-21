<?php 
require_once('connect.inc.php');
$reqCom = "UPDATE COMMANDE SET idPaiement = 0 WHERE idPaiement = :pidPaie";
$Commande = oci_parse($connect, $reqCom);
$ComPaiement = $_GET['paie'];
oci_bind_by_name($Commande, ':pidPaie', $ComPaiement);
$resultCom = oci_execute($Commande);
if (!$resultCom) {
    $y = oci_error($Commande);
    print htmlentities($y['message'] . ' pour cette requete : ' . $y['sqltext']);
}
oci_commit($connect);
oci_free_statement($Commande);

$reqPaiement = "DELETE FROM PAIEMENT WHERE numCarte = :pnumCarte";
$Paiement = oci_parse($connect,$reqPaiement);
$PaieClient = $_GET['paie'];
oci_bind_by_name($Paiement, ':pnumCarte', $PaieClient);
$resultPaiement = oci_execute($Paiement);
if (!$resultPaiement) {
    $b = oci_error($Paiement);
    print htmlentities($b['message'] . ' pour cette requete : ' . $b['sqltext']);
}
oci_commit($connect);
oci_free_statement($Paiement);
header('Location: FormConnexion.php');
?>