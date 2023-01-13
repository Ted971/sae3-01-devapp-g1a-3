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
        <div class="formulaire" style='padding-bottom: 20px; padding-top: 20px; text-align:left;'>
            <span style='font-weight: bold'>Création d'un compte</span> </br> </br>
            <?php
            if (isset($_GET['msgErreur'])) {
                echo "<div style='color: red'>".htmlentities($_GET['msgErreur'])."</div></br>";
                $_GET['msgErreur']='';
            }
            ?>
            <form action="TraitCreation.php" method="POST">
                </span>Identifiant :</span></br>
                <input type='text' name='username' class="cadreInput" 
                <?php
                if (isset($_GET['id'])) {
                    echo "value='" . $_GET['id'] . "' ";
                }
                ?> /> </br></br>
                <span>Nom :</span></br>
                <input type='text' name='last_name' class="cadreInput" /> </br></br>
                <span>Prenom :</span></br>
                <input type='text' name='first_name' class="cadreInput" /> </br></br>
                <span>Date de naissance :</span></br>
                <input type='date' name='date_naiss' class="cadreInput" /> </br></br>
                <span>Pays :</span></br>
                <select name="country" id="country-select" class="cadreInput">
                    <option value="France" class="cadreInput">France</option>
                    <option value="Espagne">Espagne</option>
                    <option value="Belgique">Belgique</option>
                </select> </br></br>
                <span name='contentDepartement'>
                    Département :</br>
                    <input type='number' name='departement' class="cadreInput" min="1" oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null" /> </br>
                </span>
                <div id='remove'> </br> </div>
                <span>Adresse Mail :</span></br>
                <input type='email' name='mail' class="cadreInput" 
                <?php
                if (isset($_GET['email'])) {
                    echo "value='" . $_GET['email'] . "' ";
                }
                ?> /> </br></br>
                <span>Mot de passe :</span></br>
                <input type='password' name='password' class="cadreInput" /> </br> </br>
                <input type='submit' name='Valider' value='Valider' /> </br></br>
            </form>
            <a style='text-decoration: underline' href='FormConnexionCompte.php' title='Connexion compte'>Se connecter</a>
        </div>
    </div>
    <?php include_once("./include/footer.php"); ?>
    <script>
        var countrySelect = document.getElementById("country-select");
        $cpt = 0;
        countrySelect.addEventListener("change", function() {
            var contentDepartement = document.getElementsByName("contentDepartement")[0];
            if (countrySelect.value != "France") {
                contentDepartement.style.display = "none";
                var toremove = document.getElementById("remove");
                toremove.style.display = "none";
            } else {
                contentDepartement.style.display = "block";
                if ($cpt == 0) {
                    var linebreak = document.createElement("br");
                    contentDepartement.append(linebreak);
                }
                $cpt += 1;
            }
        });
    </script>
</body>

</html>