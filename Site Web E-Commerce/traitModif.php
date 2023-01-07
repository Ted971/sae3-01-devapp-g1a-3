<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
    <?php
        if (isset($_POST)){
            include("connect.inc.php");
            $req = "UPDATE CLIENT SET NOMCLIENT = :nomC, PRENOMCLIENT = :prenomC, /*PSEUDOCLIENT = :pseudoC,*/ MAILCLIENT = :mailC, DTENAISSANCECLIENT = :dtnC, PAYSCLIENT = :paysC, DEPARTEMENTCLIENT = :departC WHERE IDCLIENT = :idC";
            $modifC = oci_parse($connect, $req);
            oci_bind_by_name($modifC, ":nomC", $_POST['last_name']);
            oci_bind_by_name($modifC, ":prenomC", $_POST['first_name']);
            //oci_bind_by_name($modifC, ":pseudoC", $_POST['username']);
            oci_bind_by_name($modifC, ":mailC", $_POST['mail']);
            oci_bind_by_name($modifC, ":dtnC", $_POST['date_naiss']);
            oci_bind_by_name($modifC, ":paysC", $_POST['country']);
            oci_bind_by_name($modifC, ":departC", $_POST['departement']);
            oci_bind_by_name($modifC, ":idC", $_POST['id']);
            $result = oci_execute($modifC);
                if (!$result) {
                    $e = oci_error($modifC);
                    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
                }
           header ("location: FormConnexion.php");
        }
    ?>
</html>