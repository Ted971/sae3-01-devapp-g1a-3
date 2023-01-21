<?php
require_once("connect.inc.php");
$req = "SELECT idClient FROM CLIENT WHERE mailClient = :pMailClient";
$nomC = oci_parse($connect, $req);
$mailCli = $_GET['mail'];
oci_bind_by_name($nomC, ":pMailClient", $mailCli);
$resultCli = oci_execute($nomC);
if (!$resultCli) {
    $e = oci_error($nomC);
    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
}
$idCli = 0;
while (($client = oci_fetch_assoc($nomC)) != false) {
    if (isset($client['IDCLIENT'])) {
        echo $client['IDCLIENT'];
    }
}
?>