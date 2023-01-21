<html>

<head>
    <title>Connexion</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-CorpsPage.css">


</head>

<body>
    <?php include_once("./include/header.php"); ?>
    <div class="contentConnexion2">
        <div class="formulaire2" style='padding-bottom: 20px; padding-top: 20px; text-align:center;'>
            <span style='font-weight: bold; padding-bottom: 5px;'>Création d'un compte</span> </br>
            <?php
            if (isset($_GET['msgErreur'])) {
                echo "<div style='color: red'>".htmlentities($_GET['msgErreur'])."</div></br>";
                $_GET['msgErreur']='';
            }
            ?>
            <form action="TraitCreation.php" method="POST">
                <div style='padding-bottom: 5px;'></span>Identifiant :</span></br></div>
                <input type='text' id='username' name='username' class="cadreInput" maxlength="64" onkeyup="verif_user()"
                <?php
                if (isset($_GET['id'])) {
                    echo "value='" . $_GET['id'] . "' ";
                }
                ?> /> </br></br>
                <div style='padding-bottom: 5px;'><span>Nom :</span></br></div>
                <input type='text' name='last_name' class="cadreInput" maxlength="64"/> </br></br>
                <div style='padding-bottom: 5px;'><span>Prenom :</span></br></div>
                <input type='text' name='first_name' class="cadreInput" maxlength="64"/> </br></br>
                <div style='padding-bottom: 5px;'><span>Date de naissance :</span></br></div>
                <input type='date' name='date_naiss' class="cadreInput" /> </br></br>
                <div style='padding-bottom: 5px;'><span>Pays :</span></br></div>
                <select name="country" id="country-select" class="cadreInput">
                    <option value="France" class="cadreInput">France</option>
                    <option value="Espagne">Espagne</option>
                    <option value="Belgique">Belgique</option>
                </select> </br></br>
                <div style='padding-bottom: 5px;'> <span name='contentDepartement'>
                    Département :</br> </div>
                    <input type='text' name='departement' class="cadreInput" min="1" maxLength="2" oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null" onkeypress="function(){return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))}" onpaste="function(){return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))}" onkeyup="handleChange(this);"/> </br>
                </span> 
                <div id='remove'> </br> </div>
                <div style='padding-bottom: 5px;'> <span>Adresse Mail :</span></br> </div>
                <input type='email' id='mail' name='mail' class="cadreInput" maxlength="64" onkeyup="verif_mail()"
                <?php
                if (isset($_GET['email'])) {
                    echo "value='" . $_GET['email'] . "' ";
                }
                ?> /> </br></br>
                <div style='padding-bottom: 5px;'> <span> Mot de passe :</span></br></div>
                <input type='password' id='password' name='password' class="cadreInput" maxlength="20" onkeyup="verif_corres_mdp()"/> </br></br>
                <div style='padding-bottom: 5px;'><span> Répétez le mot de passe :</span></br></div>
                <input type='password' id='repeat_password' name='repeat_password' class="cadreInput" maxlength="20" onkeyup="verif_corres_mdp()"/>
                <div id = 'divLigne'>
                </div>
                <span id="password_result"></span>
                <div id = 'divLigneBis'>
                </div>
                </br>
                <span id="mail_result"></span>
                </br>
                </br>
                <span class="result" id="user_result"></span>
                <div id='all'>
                </div>
                <input type='submit' id='valid' name='Valider' value='Valider' /> </br></br>
            </form>
            <a style='text-decoration: none; border: 1px solid; border-radius: 50px; color: black;' href='FormConnexionCompte.php' title='Connexion compte'>Se connecter</a>
        </div>
    </div>
    <?php include_once("./include/footer.php"); ?>

    <script>
    function handleChange(input) {
        if (input.value == 0 && input.value != ''){
            input.value = 1;
        } else if (input.value > 95 && input.value < 100) {
            input.value = 95;
        }
    }
    
    z = 0;
    function verif_user() {
        const user = document.getElementById("username").value;
        if (user.length > 30) {
            document.getElementById("user_result").innerHTML = "Erreur : le nom d'utilisateur ne doit pas excéder 30 caractères";
            document.getElementById("user_result").style.color = 'red';
            document.getElementById("valid").disabled = true;
            return false;
        } else {
            document.getElementById("user_result").innerHTML = "";
            if (document.getElementById("password_result").innerHTML == "") {
                document.getElementById("valid").disabled = false;
            }
        }
        
        //Liste des caractères autorisés
        var white_list = "azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN1234567890_-";

        for(var i = 0; i < user.length; i++) {
            if(white_list.indexOf(user[i]) == -1) {
                if (z == 0) {
                    var linebreak10 = document.createElement("br");
                    document.getElementById("all").append(linebreak10);
                    z = j + 1 ;
                }
                document.getElementById("user_result").innerHTML = "Erreur : le nom d'utilisateur peut contenir uniquement des lettres, des chiffres, _ et -";
                document.getElementById("user_result").style.color = 'red';
                document.getElementById("valid").disabled = true;
                return false;
            } else {
                document.getElementById("user_result").innerHTML = "";
                if (document.getElementById("password_result").innerHTML == "") {
                    document.getElementById("valid").disabled = false;
                }
            }
        }

        var xhr = new XMLHttpRequest();
        xhr.open("GET", "verif_user.php?user=" + user, true);
        xhr.send();
        var result_request = "";
        xhr.onload = function() {
            if (xhr.status = 200) {
                result_request = xhr.response;

                if (result_request != "") {
                document.getElementById("user_result").innerHTML = "Erreur : cet utilisateur existe déjà";
                document.getElementById("user_result").style.color = 'red';
                document.getElementById("valid").disabled = true;
                return false;
                }      
                else {
                    document.getElementById("user_result").innerHTML = "";
                    return true;
                }
            }    
        }
    }
    i = 0;
    j = 0;
    function verif_corres_mdp() {
            var password = document.getElementById("password").value;
            var repeated_password = document.getElementById("repeat_password").value;

            if(password != repeated_password) {
                document.getElementById("password_result").innerHTML = "Erreur : les mots de passes ne correspondent pas";
                document.getElementById("valid").disabled = true;
                document.getElementById("password_result").style.color = 'red';
                if (j == 0) {
                var linebreak = document.createElement("br");
                document.getElementById("divLigne").append(linebreak);
                j = j + 1 ;
                }
                return false;
            }
            else {
                document.getElementById("password_result").innerHTML = "";
                if (document.getElementById("user_result").innerHTML == "") {
                document.getElementById("valid").disabled = false;
                }
                return true;
            }
        }
    
    function verif_mail() {
        const mail = document.getElementById("mail").value;

        var xhrR = new XMLHttpRequest();
        xhrR.open("GET", "verif_mail.php?mail=" + mail, true);
        xhrR.send();
        var resultM_request = "";
        xhrR.onload = function() {
            if (xhrR.status = 200) {
                resultM_request = xhrR.response;

                if (resultM_request != "") {
                document.getElementById("mail_result").innerHTML = "Erreur : cette adresse e-mail existe déjà";
                document.getElementById("mail_result").style.color = 'red';
                document.getElementById("valid").disabled = true;
                return false;
                }      
                else {
                    document.getElementById("mail_result").innerHTML = "";
                    if (document.getElementById("user_result").innerHTML == "" && document.getElementById("password_result").innerHTML == "") {
                        document.getElementById("valid").disabled = false;
                    }
                    return true;
                }
            }    
        }
    }

    </script>

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