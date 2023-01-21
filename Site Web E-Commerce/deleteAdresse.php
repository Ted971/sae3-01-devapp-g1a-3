<?php 
require_once('connect.inc.php');
$reqAdresse = "DELETE FROM ADRESSE WHERE adresseClient = :padrClient";
$Adresse = oci_parse($connect,$reqAdresse);
$adrClient = $_GET['adr'];
oci_bind_by_name($Adresse, ':padrClient', $adrClient);
$resultAdr = oci_execute($Adresse);
if (!$resultAdr) {
    $b = oci_error($Adresse);
    print htmlentities($b['message'] . ' pour cette requete : ' . $b['sqltext']);
}
oci_commit($connect);
oci_free_statement($Adresse);
header('Location: FormConnexion.php');
?>