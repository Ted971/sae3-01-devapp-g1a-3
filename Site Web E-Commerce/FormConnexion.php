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
                    echo "<BR>Compte n°".$client['IDCLIENT']."<BR><BR>";
                    echo "<FONT size='5pt'>Informations personnelles:<BR></FONT>";
                    echo "<form action = 'traitModif.php' method = 'POST'>";
                    echo "<input type = 'hidden' name = 'id' value = '".$client['IDCLIENT']."'>";
                    echo "Prénom:";
                    echo  "<input type = 'text' name = 'first_name' value = '".$client['PRENOMCLIENT']."'<BR><BR>";
                    echo "<BR>Nom:";
                    echo "<input type = 'text' name = 'last_name' value = '".$client['NOMCLIENT']."'<BR><BR>";
                    echo "<BR>Date de naissance:";
                    echo "<input type = 'date' name = 'date_naiss' value = '".$client['DTENAISSANCECLIENT']."'<BR><BR>";
                    /*echo "<BR>Pseudo:";
                    echo "<input type = 'text' name = 'username' value = '".$client['PSEUDOCLIENT']."'<BR><BR>";*/
                    echo "<BR>Adresse e-mail:";
                    echo "<input type = 'text' name = 'mail' value = '".$client['MAILCLIENT']."'<BR><BR>";
                    echo "<BR><FONT size='5pt'>Adresse de facturation:<BR></FONT>";
                    echo "<BR>Pays:";
                    echo "<select name='country' id='country-select' class='cadreInput'>
                        <option value='France' class='cadreInput'>France</option>
                        <option value='Espagne'>Espagne</option>
                        <option value='Belgique'>Belgique</option>
                        value = '".$client['PAYSCLIENT']."'</select><BR><BR>";
                    echo "<BR>Departement:";
                    echo "<input type = 'text' name = 'departement' value = '".$client['DEPARTEMENTCLIENT']."'<BR><BR>";
                    echo "<BR><input type = 'submit' name = 'modifier' value = 'Modifier'/>";
                }
                echo "</div>";
            } else {
                ?>
            <div style='padding-bottom: 20px; padding-top: 20px'>
                <span style='font-weight: bold'>Connexion : </span> </br> </br>
                <?php
                    if (isset($_GET['msgErreurConn'])) {
                        echo "<h2>".htmlentities($_GET['msgErreurConn'])."</h2>";
                    }
                ?>
                <form action = "TraitConnexion.php" method = "POST">
                    Identifiant : <input type = 'text' name = 'login'
                    <?php
                        if (isset($_COOKIE['cookIdent'])) {
                            echo "value='".$_COOKIE['cookIdent']."' ";
                        }
                    ?>
                    class="cadreInput" /> </br></br>
                    Mot de passe : <input type = 'password' name = 'password' class="cadreInput"/> </br> </br>
                    Se souvenir de moi : <input type = 'checkbox' name = 'souvenir' /> </br> </br>
                    <input type = 'submit' name = 'Valider' value = 'Valider'/> </br>
                </form>
            </div>
            <div style='padding-bottom: 20px; padding-top: 20px'>
                <span style='font-weight: bold'>Création d'un compte : </span> </br> </br>
                <?php
                    if (isset($_GET['msgErreur'])) {
                        echo "<h2>".htmlentities($_GET['msgErreur'])."</h2>";
                    }
                ?>
                <form action = "TraitCreation.php" method = "POST">
                        Pseudo : <input type = 'text' name = 'username' class="cadreInput"/> </br></br> 
                        Nom : <input type = 'text' name = 'last_name' class="cadreInput"/> </br></br>
                        Prenom : <input type = 'text' name = 'first_name' class="cadreInput"/> </br></br>
                        Date de naissance : <input type = 'date' name = 'date_naiss' class="cadreInput"/> </br></br>
                        Pays :
                        <select name="country" id="country-select" class="cadreInput">
                            <option value="France" class="cadreInput">France</option>
                            <option value="Espagne">Espagne</option>
                            <option value="Belgique">Belgique</option>
                        </select> </br></br>
                        <!-- Faire disparaitre département si autre que France -->
                        Département : <input type = 'number' name = 'departement' class="cadreInput" min="1" oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"/> </br> </br>
                        Adresse Mail : <input type = 'email' name = 'mail' class="cadreInput"/> </br></br>
                        Mot de passe : <input type = 'password' name = 'password' class="cadreInput"/> </br> </br>
                        <input type = 'submit' name = 'Valider' value = 'Valider'/> </br>
                </form>
                <form action = "traitAjoutP.php" method = "POST">
                <input type = 'submit' name = 'test' value = 'test'/> </br>
                </form>
            </div>
            <?php }  ?>
    </div>
    <?php include_once("./include/footer.php"); ?>
</body>
</html>