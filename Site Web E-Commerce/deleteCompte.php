<html>
<?php
require_once('connect.inc.php');
echo $_POST['pseudoC'];
if(isset($_POST)){
    $req = "DELETE FROM COMMANDE WHERE PSEUDOCLIENT = '".$_POST['pseudoC']."'";

    $req = "DELETE FROM CLIENT WHERE PSEUDOCLIENT = '".$_POST['pseudoC']."'";
    $nomC = oci_parse($connect, $req);
    //$nomCli = $_POST['pseudoC'];
    //oci_bind_by_name($nomC, ":pseudoClient", $nomCli);
    $result = oci_execute($nomC);
    if (!$result) {
        $e = oci_error($nomC);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
}
?>
</html>