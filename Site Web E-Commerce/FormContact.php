<html>

<head>
    <title>La Parure Française - Formulaire de contact</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="include/style.css">
	<link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-contact.css">
    <link rel="shortcut icon" href="images/favicon.ico" /> 
</head>
<?php include("./include/header.php"); 
require_once("connect.inc.php");
?>


<body>
    <?php if (!isset($_SESSION['acces'])) { ?>
        <div class="login-required">
            <p>Vous devez être connecté pour accéder à cette page.</p></br>
        </div>
    <?php } else { ?>
        <?php 
        $req = "SELECT * FROM CLIENT WHERE pseudoClient = :pidClient";
        $nomC = oci_parse($connect, $req);
        $nomCli = $_SESSION['nom'];
        oci_bind_by_name($nomC, ":pidClient", $nomCli);
        $result = oci_execute($nomC);
        if (!$result) {
            $e = oci_error($lesCategories);
            print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
        }
        $mail = '';
        while (($client = oci_fetch_assoc($nomC)) != false) {
            $mail = $client['MAILCLIENT'];
        }
        ?>
        <h1>Formulaire de contact</h1>
        <form action="TraitContact.php" method="POST" class="contact">
            <?php if (isset($_GET['msgErr'])) {
                echo "<p>" . htmlentities($_GET['msgErr']) . "</p>";
            } else if (isset($_GET['validation'])) {
                echo "<p>" . htmlentities($_GET['validation']) . "</p>";
            }
            else {
                echo "<p>Veuillez remplir les champs du formulaire</p>";
            }
            ?>
            <label for="email">Email</label><br>
            <input type="email" id="email" name="email" placeholder="Votre email" value='<?php echo $mail ?>' required><br><br>
            <label for="subject">Sujet</label><br>
            <input type="text" id="subject" name="subject" placeholder="Sujet de votre message" required><br><br>
            <label for="message">Message</label><br>
            <textarea id="message" name="message" placeholder="Votre message" style="height:230px" required></textarea><br><br>
            <input type="submit" value="Envoyer" name="Envoyer">
        </form>
    <?php } ?>
</body>
<?php include("./include/footer.php"); ?>

</html>