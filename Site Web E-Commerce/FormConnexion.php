<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">


</head>
<body>
    
    <?php include_once("./include/header.php"); ?>
    <div class="contentConnexion">
        <?php
            if (isset($_SESSION['acces'])) {
                echo "<div>";
                echo "<BR>Bonjour ";
                echo $_SESSION['nom']."<BR>";
                include("connect.inc.php");
                $req = "SELECT * FROM CLIENT WHERE pseudoClient = :pidClient";
                $nomC = oci_parse($connect, $req);
                $nomCli = $_SESSION['nom'];
                oci_bind_by_name($nomC, ":pidClient", $nomCli);
                $result = oci_execute($nomC);
                if (!$result) {
                    $e = oci_error($lesCategories);
                    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
                }
                while (($client = oci_fetch_assoc($nomC)) != false) {
                    //echo "<BR>Compte n°".$client['IDCLIENT']."<BR><BR>";
                    echo "</br>";
                    echo "<font size='4pt'>Informations personnelles :</br></font>";
                    echo "</br>";
                    echo "<form action = 'traitModif.php' method = 'POST'>";
                    echo "<input type = 'hidden' name = 'id' value = '".$client['IDCLIENT']."'>";
                    echo "Prénom :   ";
                    echo  "<input type = 'text' name = 'first_name' value = '".$client['PRENOMCLIENT']."'<BR><BR>";
                    echo "</br> Nom :   ";
                    echo "<input type = 'text' name = 'last_name' value = '".$client['NOMCLIENT']."'<BR><BR>";
                    echo "</br> Date de naissance :   ";
                    $dtn = $client['DTENAISSANCECLIENT'];
                    $dtn = explode("-", $dtn);
                    $memoire = $dtn[2];
                    $memoire2 = $dtn[0];
                    $dtn[0] = $memoire;
                    $dtn[2] = $memoire2;
                    if($dtn[0] < 25){
                        $dtn[0] = "20".$dtn[0];
                    }else{
                        $dtn[0] = "19".$dtn[0];
                    }
                    if($dtn[1] == 'JAN'){
                        $dtn[1] = '01';
                    }else if($dtn[1] == 'FEB'){
                        $dtn[1] = '02';
                    }else if($dtn[1] == 'MAR'){
                        $dtn[1] = '03';
                    }else if($dtn[1] == 'APR'){
                        $dtn[1] = '04';
                    }else if($dtn[1] == "MAY"){
                        $dtn[1] = '05';
                    }else if($dtn[1] == 'JUN'){
                        $dtn[1] = '06';
                    }else if($dtn[1] == 'JUL'){
                        $dtn[1] = '07';
                    }else if($dtn[1] == 'AUG'){
                        $dtn[1] = '08';
                    }else if($dtn[1] == 'SEP'){
                        $dtn[1] = '09';
                    }else if($dtn[1] == 'OCT'){
                        $dtn[1] = '10';
                    }else if($dtn[1] == 'NOV'){
                        $dtn[1] = '11';
                    }else if($dtn[1] == 'DEC'){
                        $dtn[1] = '12';
                    }
                    echo "<input type = 'date' name = 'date_naiss' value = '".$dtn[0]."-".$dtn[1]."-".$dtn[2]."'<BR><BR>";
                    /*echo "<BR>Pseudo:";
                    echo "<input type = 'text' name = 'username' value = '".$client['PSEUDOCLIENT']."'<BR><BR>";*/
                    echo "</br> Adresse e-mail :   ";
                    echo "<input type = 'text' name = 'mail' value = '".$client['MAILCLIENT']."'<BR><BR>";
                    echo "</br><font size='4pt'> Adresse de facturation :</br></font>";
                    echo "</br> Pays :   ";
                    echo "<select name='country' id='country-select' class='cadreInput'>
                        <option value='France' class='cadreInput'>France</option>
                        <option value='Espagne'>Espagne</option>
                        <option value='Belgique'>Belgique</option>
                        value = '".$client['PAYSCLIENT']."'</select>";
                    echo "</br></br> Département :   ";
                    echo "<input type = 'text' name = 'departement' value = '".$client['DEPARTEMENTCLIENT']."'</br></br>";
                    echo "</br><input type = 'submit' name = 'modifier' value = 'Modifier'/>";
                }
                echo "<BR><BR><a href='commandePassee.php'>Accédez aux commandes précédentes</a>";
                echo "</div>";
            } else {
                ?>
            <div style='padding-bottom: 20px; padding-top: 20px'>
                <span style='font-weight: bold'>Continuer avec mon adresse e-mail ou mon login : </span> </br> </br>
                <?php
                    if (isset($_GET['msgErreurConn'])) {
                        echo "<h2>".htmlentities($_GET['msgErreurConn'])."</h2>";
                    }
                ?>
                <form action = 'TraitRedirection.php' method = 'POST'>
                    E-mail / Login : <input type = 'text' name = 'id' class='cadreInput' /> </br></br>
                    <input type = 'submit' name = 'Valider' value = 'Valider'/> </br>
                </form>
            </div>
            <?php }  ?>
    </div>
    <?php include_once("./include/footer.php"); ?>
</body>
</html>

