<?php
include("./include/connect.inc.php");
error_reporting(0);
if (isset($_POST['Envoyer'])) {
    $req = "SELECT idClient FROM Client WHERE mailClient = :mClient";
    $leClient = oci_parse($connect, $req);
    oci_bind_by_name($leClient, ":mClient", $_POST['email']);
    oci_execute($leClient);
    $existe = ($client = oci_fetch_assoc($leClient));
    oci_free_statement($leClient);
    if ($existe != false) {
        $reqInsert = "INSERT INTO Formulaire (idFormulaire, idClient, mailFormulaire, titreFormulaire, messageFormulaire) VALUES (seq_formulaire.NEXTVAL, :idClient, :mailClient, :titreForm, :messageForm)";
        $insertForm = oci_parse($connect, $reqInsert);
        oci_bind_by_name($insertForm, ":idClient", $client['IDCLIENT']);
        oci_bind_by_name($insertForm, ":mailClient", $_POST['email']);
        oci_bind_by_name($insertForm, ":titreForm", $_POST['subject']);
        oci_bind_by_name($insertForm, ":messageForm", $_POST['message']);
        oci_execute($insertForm);
        oci_commit($connect);
        oci_free_statement($insertForm);
        header('location: FormContact.php?msgErr=Formulaire inséré');
        exit();
    }
    header('location: FormContact.php?msgErr=Il n\'existe aucun client avec ce mail...');
    exit();
}
?>