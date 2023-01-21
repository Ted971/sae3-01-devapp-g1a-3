<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
    <?php
        if (isset($_POST)){
            include("connect.inc.php");
            $req = "UPDATE CLIENT SET NOMCLIENT = :nomC, PRENOMCLIENT = :prenomC, MAILCLIENT = :mailC, DTENAISSANCECLIENT = :dtnC, PAYSCLIENT = :paysC, DEPARTEMENTCLIENT = :departC WHERE IDCLIENT = :idC";
            $modifC = oci_parse($connect, $req);
            oci_bind_by_name($modifC, ":nomC", $_POST['last_name']);
            oci_bind_by_name($modifC, ":prenomC", $_POST['first_name']);
            //oci_bind_by_name($modifC, ":pseudoC", $_POST['username']);
            oci_bind_by_name($modifC, ":mailC", $_POST['mail']);
            $dtn = $_POST['date_naiss'];
            $dtn = explode("-", $dtn);
            if($dtn[1] == '01'){
                $dtn[1] = 'JAN';
            }else if($dtn[1] == '02'){
                $dtn[1] = 'FEB';
            }else if($dtn[1] == '03'){
                $dtn[1] = 'MAR';
            }else if($dtn[1] == '04'){
                $dtn[1] = 'APR';
            }else if($dtn[1] == "05"){
                $dtn[1] = 'MAY';
            }else if($dtn[1] == '06'){
                $dtn[1] = 'JUN';
            }else if($dtn[1] == '07'){
                $dtn[1] = 'JUL';
            }else if($dtn[1] == '08'){
                $dtn[1] = 'AUG';
            }else if($dtn[1] == '09'){
                $dtn[1] = 'SEP';
            }else if($dtn[1] == '10'){
                $dtn[1] = 'OCT';
            }else if($dtn[1] == '11'){
                $dtn[1] = 'NOV';
            }else if($dtn[1] == '12'){
                $dtn[1] = 'DEC';
            }
            $dtnf = $dtn[2]."/".$dtn[1]."/".$dtn[0];
            oci_bind_by_name($modifC, ":dtnC", $dtnf);
            oci_bind_by_name($modifC, ":paysC", $_POST['country']);
            if($_POST['departement'] > 100 || $_POST['departement'] < 1){
                header ("location: FormConnexion.php?msgErreur= département non valide");
                exit;
            }
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