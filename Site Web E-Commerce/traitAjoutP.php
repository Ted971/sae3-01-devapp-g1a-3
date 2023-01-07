<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<?php
include("connect.inc.php");
if (isset($_POST)){
    $req = "UPDATE CARACTERISTIQUES SET QTESTOCKEE = QTESTOCKEE-1  WHERE IDDETAILPRODUIT = 1";
                $nomC = oci_parse($connect, $req);
                $result = oci_execute($nomC);
}
?>
</html>