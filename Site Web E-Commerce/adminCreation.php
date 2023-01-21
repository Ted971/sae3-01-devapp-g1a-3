<html>

<head>
    <title>Menu administrateur</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-admin.css">
    <link rel="stylesheet" type="text/css" href="include/style-CorpsPage.css">
    <link rel="shortcut icon" href="images/favicon.ico" /> 
    <link rel="stylesheet" type="text/css" href="include/style-popup.css">
</head>

<body>
	<?php include_once("./include/header.php"); ?>
<div class='content'>
<?php
require_once('connect.inc.php');
echo "<a href='admin.php'>Revenir</a>";
/*$reqSel = "SELECT * FROM PRODUIT P, DETAILPRODUIT D, CARACTERISTIQUES C WHERE D.idProduit = P.idProduit AND P.idProduit = C.idDetailProduit ORDER BY P.idProduit ASC";
$selectionprod = oci_parse($connect,$reqSel);
$resultSelect = oci_execute($selectionprod);
if (!$resultSelect) {
$e = oci_error($selectionprod);
print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
}
$tab = array();
$tabCol = array();
$tabSize = array();
$tabNom = array();
$tabMat = array();
$tabDesc = array();
$tabGenre = array();
$tabPrix = array();
$i = 0;
$test = 0;
while (($prod = oci_fetch_assoc($selectionprod)) != false) {
    array_push($tab, $prod['IDPRODUIT']);
    array_push($tabCol, $prod['COLORISPRODUIT']);
    array_push($tabSize, $prod['TAILLEPRODUIT']);
    if ($i != 0) {
        if ($tab[$i] != $tab[$i-1]){
        echo"<div style='display: flex;'>";
                                echo "<input type='text' value='".$prod['NOMPRODUIT']."'>";
                                echo "<input type='text' value='".$prod['MATIEREPRODUIT']."'>";
                                echo "<input type='text' value='".$prod['DESCRIPTIONPRODUIT']."'>";
                                echo "<input type='text' value='".$prod['GENREPRODUIT']."'>";
                                echo "<input type='text' value='".$prod['PRIXPRODUIT']."'>";
                                echo "<select>";
                                $tabVerifCol = array();
                                $j = 0;
                                foreach ($tabCol as $result) {
                                    if (!in_array($result, $tabVerifCol)) {
                                        $tabVerifCol[$j] =  $result;
                                        echo "<option value = '$result'>".$result."</option>";
                                    }
                                    $j = $j + 1;
                                }
                                echo "</select>";
                                echo "<select>";
                                $tabVerifSize = array();
                                $v = 0;
                                foreach ($tabSize as $resultSize) {
                                    if (!in_array($resultSize, $tabVerifSize)) {
                                        $tabVerifSize[$v] =  $resultSize;
                                        echo "<option value = '$resultSize'>".$resultSize."</option>";
                                    }
                                    $v = $v + 1;
                                }
                                echo "</select>";
                                echo "<input type='text' value='".$prod['QTESTOCKEE']."'>";
                            echo"</div>";
                        }
                        }
                        $i = $i + 1;
                      
    
}*/


/*echo "<div style = 'padding-bottom: 3%'> </div>";
$reqAdr = "SELECT * FROM ADRESSE A ORDER BY idClient ASC";
$selectionAdr = oci_parse($connect,$reqAdr);
$resultAdresse = oci_execute($selectionAdr);
if (!$resultAdresse) {
$p = oci_error($selectionAdr);
print htmlentities($p['message'] . ' pour cette requete : ' . $p['sqltext']);
}
$adr = array();
while (($adresse = oci_fetch_assoc($selectionAdr)) != false) {
    array_push($adr,$adresse['IDCLIENT']);
}

$reqCli = "SELECT * FROM CLIENT C ORDER BY idClient ASC";
$selectioncli = oci_parse($connect,$reqCli);
$resultClient = oci_execute($selectioncli);
if (!$resultClient) {
$g = oci_error($selectioncli);
print htmlentities($g['message'] . ' pour cette requete : ' . $g['sqltext']);
}
while (($client = oci_fetch_assoc($selectioncli)) != false) {
    $x = 0;
    $tabVerifAdr = array();
    foreach ($adr as $resultAdr) {
        if ($resultAdr[$x] == $client['IDCLIENT']) {
            $reqAdr2 = "SELECT * FROM ADRESSE A WHERE idClient = :pidClient";
            $selectionAdr2 = oci_parse($connect,$reqAdr2);
            $idCli = $client['IDCLIENT'];
            oci_bind_by_name($selectionAdr2, ':pidClient', $idCli);
            $resultAdresse2 = oci_execute($selectionAdr2);
            if (!$resultAdresse2) {
            $p2 = oci_error($selectionAdr2);
            print htmlentities($p2['message'] . ' pour cette requete : ' . $p2['sqltext']);
            }
            while (($chaqueAdresse = oci_fetch_assoc($selectionAdr2)) != false) {
                array_push($tabVerifAdr,$chaqueAdresse['ADRESSECLIENT']);
            }
            break;
        }
        $x = $x + 1;
    }
    echo"<div style='display: flex;'>";
        echo "<input type='text' value='".$client['NOMCLIENT']."'>";
        echo "<input type='text' value='".$client['PRENOMCLIENT']."'>";
        echo "<input type='text' value='".$client['PSEUDOCLIENT']."'>";
        echo "<input type='text' value='".$client['MAILCLIENT']."'>";
        echo "<input type='text' value='".$client['DTENAISSANCECLIENT']."'>";
        echo "<input type='text' value='".$client['PAYSCLIENT']."'>";
        echo "<input type='text' value='".$client['DEPARTEMENTCLIENT']."'>";
        echo "<input type='text' value='".$client['ROLECLIENT']."'>";
        if (isset($tabVerifAdr)) {
            $q = 0;
            foreach ($tabVerifAdr as $resultAdr3 => $item) {
                $str = print_r($item, true);
                echo "<input type='text' value='".$str."'>";
                $q = $q+1;
            }
        }
        echo "<input type ='submit' name = 'modifier' value = 'Modifier'>" ;
        //création de popup...
        echo "<form action='deleteCompte.php' method = 'POST'>";
        echo "<button onclick='this.form.submit()'>&times;</button> </br>";
        echo "</form>";
    echo"</div>";
}*/

?>
</div>
<div class="contentConnexion2">
    <div class="formulaire2" style='padding-bottom: 20px; padding-top: 20px; text-align:center;'>
        <span style='font-weight: bold; padding-bottom: 5px;'>Création d'un compte admin</span> </br>
        <?php
        if (isset($_GET['msgErreur'])) {
            echo "<div style='color: red'>".htmlentities($_GET['msgErreur'])."</div></br>";
            $_GET['msgErreur']='';
        }
        ?>
        <form action="TraitCreationAdmin.php" method="POST">
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
    </div>
</div>

<?php
/*echo "<div style = 'padding-bottom: 3%'> </div>";
$reqForm = "SELECT * FROM FORMULAIRE F, CLIENT C WHERE F.idClient = C.idClient ORDER BY C.idClient ASC";
$selectionform = oci_parse($connect,$reqForm);
$resultForm = oci_execute($selectionform);
if (!$resultForm) {
$z = oci_error($resultForm);
print htmlentities($z['message'] . ' pour cette requete : ' . $z['sqltext']);
}
while (($recup = oci_fetch_assoc($selectionform)) != false) {
    echo ($recup['PRENOMCLIENT']." ".$recup['NOMCLIENT']." - ".$recup['MAILFORMULAIRE']." : ".$recup['TITREFORMULAIRE']." - ".$recup['MESSAGEFORMULAIRE']);
}*/
?>


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

<script>
        let getDate = document.getElementById("date");
        let getcb = document.getElementById("cb");
        let getadresse = document.getElementById("adresse");
        let formAdresse = document.getElementById("formAdresse");
        let line = document.getElementById("line");

        function openId(){
            date.classList.remove("close-popup");
            cb.classList.remove("close-popup");
            something.classList.remove("close-popup");
            cache.classList.add("close-popup")
        }
        $ju = 0
        function openId2(){
            if ($ju == 0) {
            var linebreak3 = document.createElement("br");
            line.append(linebreak3);
            adresse.classList.remove("close-popup");
            buttonAdresse.classList.remove("close-popup");
            var linebreak = document.createElement("br");
            var linebreak2 = document.createElement("br");
            formAdresse.append(linebreak2);
            formAdresse.append(linebreak);
            cache.classList.add("close-popup");
            }
            $ju = $ju + 1;
        }
    
   var i = 1;

   function appendButton(elementId){
    if (i == 1) {
	var buttonEl = document.createElement("a");
	var buttonTextEl = document.createElement("span");

    var input3 = document.createElement("input");
    input3.setAttribute("id","cvv");
    input3.setAttribute("type","text");
    input3.setAttribute("maxLength","3");
    input3.setAttribute("placeholder","CVV");
    input3.onkeypress=function(){return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))};
    input3.onpaste=function(){return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))};
    input3.min="0";
    input3.setAttribute("name","CVV");

    var linebreak = document.createElement("br");
    var linebreak2 = document.createElement("br");
    var linebreak3 = document.createElement("br");
    var linebreak4 = document.createElement("br");
    var linebreak5 = document.createElement("br");
    var linebreak6 = document.createElement("br");
    var linebreak7 = document.createElement("br");

    var input1 = document.getElementById("cb");
    var input4 = document.getElementById("date");
    // input1.setAttribute("id","cb");
    // input1.setAttribute("type","text");
    // input1.setAttribute("maxLength","19");
    // input1.setAttribute("placeholder","Numéro de CB");
    // input1.setAttribute("hidden","true");

    document.getElementById(elementId).appendChild(buttonEl);
    buttonEl.appendChild(buttonTextEl);
    buttonEl.appendChild(input1);
    buttonEl.appendChild(input3);
    buttonEl.appendChild(input4);

    var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "traitementPaiementBis.php");
    var but = document.createElement("input");
    but.setAttribute("type","submit");
    but.setAttribute("id","buttonPanier");
    but.setAttribute("name","Ajout");
    but.setAttribute("value","Valider");
    form.append(linebreak3);
    form.append(input1);
    form.append(linebreak2);
    form.append(linebreak);
    form.append(input4);
    form.append(linebreak6);
    form.append(linebreak7);
    form.append(input3);
    form.append(linebreak4);
    form.append(linebreak5);
    form.append(but);
    buttonEl.appendChild(form);
    
    }
    var date = document.getElementById('date');
    date.addEventListener('keypress', updateInput);
    date.addEventListener('change', updateInput);
    date.addEventListener('paste', updateInput);
    date.addEventListener('keydown', removeText);
    date.addEventListener('cut', removeText);
    i = i+1;
   }
    var date = document.getElementById('date');
    date.addEventListener('keypress', updateInput);
    date.addEventListener('change', updateInput);
    date.addEventListener('paste', updateInput);
    date.addEventListener('keydown', removeText);
    date.addEventListener('cut', removeText);

    function updateInput(event) {
        event.preventDefault();
        var string = getString(event);
        var selectionStart = this.selectionStart;
        var selectionEnd = this.selectionEnd;
        var selectionLength = selectionEnd - selectionStart;
        var sanitizedString = string.replace(/[^0-9]+/g, '');
        if (sanitizedString.length === 0) {
            return;
        }
        var valLength = date.value.replace(/[^0-9]+/g, '').length;
        var availableSpace = 4 - valLength + selectionLength;
        if (selectionStart <= 2 && selectionEnd >= 3) {
            availableSpace -= 1;
        }
        if (sanitizedString.length > availableSpace) {
            sanitizedString = sanitizedString.substring(0, availableSpace);
        }
        var newCursorPosition = selectionEnd + sanitizedString.length - selectionLength;
        if (selectionStart <= 2 && newCursorPosition >= 2) {
            newCursorPosition += 1;
        }
        var valueStart = date.value.substring(0, this.selectionStart);
        var valueEnd = date.value.substring(this.selectionEnd, date.value.length);
        var proposedValue = valueStart + sanitizedString + valueEnd;
        var sanitized = proposedValue.replace(/[^0-9]+/g, '');
        format(sanitized);
        this.setSelectionRange(newCursorPosition, newCursorPosition);
    }

    function removeText(event) {
    if (event.key === 'Backspace' || event.type === 'cut') {
        event.preventDefault();
        var selectionStart = this.selectionStart;
        var selectionEnd = this.selectionEnd;
        var selectionLength = selectionEnd - selectionStart;
        if (selectionLength === 0 && event.type !== 'cut') {
            selectionStart -= 1;
        if (selectionStart === 2) {
            selectionStart -= 1;
        }
        }
        var valueStart = date.value.substring(0, selectionStart);
        var valueEnd = date.value.substring(selectionEnd, date.value.length);
        if (selectionStart === 2) {
        selectionStart += 1;
        }
        var proposedValue = valueStart + valueEnd;
        var sanitized = proposedValue.replace(/[^0-9]+/g, '');
        format(sanitized);
        this.setSelectionRange(selectionStart, selectionStart);
    }
    }

    function getString(event) {
        if (event.type === 'paste') {
        var clipboardData = event.clipboardData || window.clipboardData;
        return clipboardData.getData('Text');
    } else {
        return String.fromCharCode(event.which);
    }
    }

    function format(sanitized) {
        var newValue;
        var month = sanitized.substring(0, 2);
        if (sanitized.length < 2) {
            newValue = month;
        } else {
            var year = sanitized.substring(2, 4);
            newValue = month + '/' + year;
        }
        date.value = newValue;
    }

</script>
    <script type="text/javascript">
        function update() {
            var select = document.getElementById('livraison');
            var option = select.options[select.selectedIndex];
            var select2 = document.getElementById('paiement');
            var option2 = select2.options[select.selectedIndex];

            document.getElementById('value').value = option.value;
            document.getElementById('value2').value = option2.value;
        }
        update();
    </script>
    <script>
        document.getElementById("button").addEventListener('click', () => appendButton("something"));
        document.getElementById('cb').addEventListener('input', function (e) {
        var target = e.target, position = target.selectionEnd, length = target.value.length;
        
        target.value = target.value.replace(/[^\dA-Z]/g, '').replace(/(.{4})/g, '$1 ').trim();
        target.selectionEnd = position += ((target.value.charAt(position - 1) === ' ' && target.value.charAt(length - 1) === ' ' && length !== target.value.length) ? 1 : 0);
        });
    </script>
    <script>

        const openModalButtons = document.querySelectorAll('[data-modal-target]')
        const closeModalButtons = document.querySelectorAll('[data-close-button]')
        const overlay = document.getElementById('overlay')

        openModalButtons.forEach(button => {
            button.addEventListener('click', () => {
            const modal = document.querySelector(button.dataset.modalTarget)
            openModal(modal)
            })
        })

        overlay.addEventListener('click', () => {
            const modals = document.querySelectorAll('.modal.active')
            modals.forEach(modal => {
            closeModal(modal)
            })
        })

        closeModalButtons.forEach(button => {
            button.addEventListener('click', () => {
            const modal = button.closest('.modal')
            closeModal(modal)
            })
        })

        function openModal(modal) {
            if (modal == null) return
            modal.classList.add('active')
            overlay.classList.add('active')
        }

        function closeModal(modal) {
            if (modal == null) return
            modal.classList.remove('active')
            overlay.classList.remove('active')
        }

        function closePopup(){
            modal.classList.remove('active');
        }

    </script>

<footer>
	<?php include_once("./include/footer.php"); ?>
	</footer>
</body>
</html>