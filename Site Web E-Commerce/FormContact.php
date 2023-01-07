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

</head>
<?php include("./include/header.php"); ?>

<body>
    <?php if (!isset($_SESSION['acces'])) { ?>
        <div class="login-required">
            <p>Vous devez être connecté pour accéder à cette page.</p></br>
            <a href="FormConnexion.php">Se connecter</a>
        </div>
    <?php } else { ?>
        <h1>Formulaire de contact</h1>
        <form action="TraitContact.php" method="POST" class="contact">
            <?php if (isset($_GET['msgErr'])) {
                echo "<p>" . htmlentities($_GET['msgErr']) . "</p>";
            } else {
                echo "<p>Veuillez remplir les champs du formulaire</p>";
            }
            ?>
            <label for="email">Email</label><br>
            <input type="email" id="email" name="email" placeholder="Votre email" required><br><br>
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