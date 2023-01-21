<html>
<head>
	<title>Connexion</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-popup.css">
    <link rel="stylesheet" type="text/css" href="include/style-recap-commande.css">
    <link rel="shortcut icon" href="images/favicon.ico" /> 

</head>
<body>
    
    <?php include_once("./include/header.php"); ?>
    
    <div class="contentConnexion">
        <?php
            if (isset($_SESSION['acces'])) {
                echo "<div>";
                if (isset($_GET['msgErreur'])) {
                    echo "<h2><p style='color:#FF0000';>".htmlentities($_GET['msgErreur'])."</p></h2>";
                }
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
                    if($client['ROLECLIENT'] == 'Admin'){
                        echo "<BR><BR><a href='admin.php'>Accédez aux fonctionnalités admin</a>";
                    }
                    $mdp = $client['PASSWORDCLIENT'];
                    //echo "<BR>Compte n°".$client['IDCLIENT']."<BR><BR>";
                    echo "</br>";
                    echo "<font size='4pt'>Informations personnelles :</br></font>";
                    echo "</br>";
                    //echo "<form action = 'traitModif' method = 'POST'>";
                    echo "<input type = 'hidden' name = 'id' value = '".$client['IDCLIENT']."'>";
                    echo "Prénom :   ";
                    echo  $client['PRENOMCLIENT']."<BR><BR>";
                    echo "</br> Nom :   ";
                    echo $client['NOMCLIENT']."<BR><BR>";
                    echo "</br> Date de naissance :   ";
                    if (!empty($client['DTENAISSANCECLIENT'])){
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
                    }
                    echo $dtn[2]."/".$dtn[1]."/".$dtn[0]."<BR><BR>";
                    /*echo "<BR>Pseudo:";
                    echo "<input type = 'text' name = 'username' value = '".$client['PSEUDOCLIENT']."'<BR><BR>";*/
                    echo "</br> Adresse e-mail :   ";
                    echo $client['MAILCLIENT']."<BR><BR>";
                    echo "</br><font size='4pt'> Adresse de facturation :</br></font>";
                    echo "</br> Pays :   ";
                    echo $client['PAYSCLIENT'];
                    echo "</br></br> Département :   ";
                    echo $client['DEPARTEMENTCLIENT']."</br><BR>";
                    echo "</br>  <button data-modal-target='#modal'>Modifier</button>
                    <div class='modal' id='modal'>
                      <div class='modal-header'>
                        <div class='title'>Modifier </div>
                        <button data-close-button class='close-button' onclick='closePopup()'>&times</button>
                      </div>
                      <div class='modal-body'>";
                    echo "<form action = 'traitModif' method = 'POST'>";
                    echo "<input type = 'hidden' name = 'id' value = '".$client['IDCLIENT']."'>";
                    echo "Prénom :  ";
                    echo  "<input type = 'text' name = 'first_name' value = '".$client['PRENOMCLIENT']."'<BR><BR>";
                    echo "</br> Nom :   ";
                    echo "<input type = 'text' name = 'last_name' value = '".$client['NOMCLIENT']."'<BR><BR>";
                    echo "</br> Date de naissance :   ";
                    if (!empty($client['DTENAISSANCECLIENT'])){
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
                    }
                    echo "<input type = 'date' name = 'date_naiss' value = '".$dtn[0]."-".$dtn[1]."-".$dtn[2]."'<BR><BR>";
                    /*echo "<BR>Pseudo:";
                    echo "<input type = 'text' name = 'username' value = '".$client['PSEUDOCLIENT']."'<BR><BR>";*/
                    echo "</br> Adresse e-mail :   ";
                    echo "<input type = 'text' name = 'mail' value = '".$client['MAILCLIENT']."'<BR><BR>";
                    echo "</br><font size='4pt'> Adresse de facturation :</br></font>";
                    echo "</br> Pays :   ";
                    if($client['PAYSCLIENT'] == 'Espagne'){
                        echo "<select name='country' id='country-select' class='cadreInput'>
                        <option value='France' class='cadreInput'>France</option>
                        <option value='Espagne' selected>Espagne</option>
                        <option value='Belgique'>Belgique</option></select>"; 
                    }else if($client['PAYSCLIENT'] == 'Belgique'){
                        echo "<select name='country' id='country-select' class='cadreInput'>
                        <option value='France' class='cadreInput'>France</option>
                        <option value='Espagne' >Espagne</option>
                        <option value='Belgique' selected>Belgique</option></select>"; 
                    }else{
                        echo "<select name='country' id='country-select' class='cadreInput'>
                        <option value='France' class='cadreInput'>France</option>
                        <option value='Espagne'>Espagne</option>
                        <option value='Belgique'>Belgique</option></select>";
                    }
                    echo "<BR><BR> Département :   ";
                    echo "<input type = 'text' name = 'departement' value = '".$client['DEPARTEMENTCLIENT']."'</br><BR>";
                    echo "</br>  <input type ='submit' name = 'modifier' value = 'Modifier'>" ;
                    echo "</form>";
                    echo "</div>";
                    echo "</div>";
                    echo"<div id='overlay'></div>";
                    echo "</div>";
                    
                }
                echo "<BR><BR><a href='commandePassee.php'>Accédez à votre historique de commandes</a>";
                $reqClient = "SELECT idClient, paysClient FROM CLIENT WHERE pseudoClient = :sessId ";
                $leClient = oci_parse($connect, $reqClient);
                $sess_id = $_SESSION['nom'];
                oci_bind_by_name($leClient,":sessId", $sess_id);
                $resultCli = oci_execute($leClient);
                if (!$resultCli) {
                    $g = oci_error($leClient);
                    print htmlentities($g['message'] . ' pour cette requete : ' . $g['sqltext']);
                }
                $paysClient = '';
                $idClient = 0;
                while (($recupCli = oci_fetch_assoc($leClient)) != false) {
                    $idClient = $recupCli['IDCLIENT'];
                }
                oci_free_statement($leClient);
                echo "<div>";
                echo "</br> Moyens de paiement : ";
                echo "<select id='paiement' onChange='update()'>";
                $reqMoyen = "SELECT * FROM PAIEMENT WHERE idClient = :pidClient";
                $lePaiement = oci_parse($connect,$reqMoyen);
                oci_bind_by_name($lePaiement, ':pidClient', $idClient);
                $resultPaie = oci_execute($lePaiement);
                if (!$resultPaie) {
                    $y = oci_error($lePaiement);
                    print htmlentities($y['message'] . ' pour cette requete : ' . $y['sqltext']);
                }
                $h = 0;
                while (($paiement = oci_fetch_assoc($lePaiement)) != false) {
                    $ymd = $paiement['EXPICARTE'];
                    $arr = str_split($paiement['NUMCARTE']);
                    $savecvv = $paiement['CVVCARTE'];
                    echo "<option value=$arr[0]$arr[1]$arr[2]$arr[3]$arr[4]$arr[5]$arr[6]$arr[7]$arr[8]$arr[9]$arr[10]$arr[11]$arr[12]$arr[13]$arr[14]$arr[15]-$savecvv> CB - N° XXXX-XXXX-XXXX-".$arr[12].$arr[13].$arr[14].$arr[15]." - Date d'expiration : ".$ymd."</option>";
                    $h = $h + 1;
                }
                oci_free_statement($lePaiement);
                echo "</select>";
                ?>
                <div>
                </br>
                <button id="button" onclick="openId()">Ajouter un nouveau moyen de paiement</button>
                <div id='something' class='close-popup'>
                <input id="cb" class='close-popup' type="text" name="cb" maxLength='19' placeholder="Numéro de CB"/>
                <input id="date" class='close-popup' type="text" name="expiration" maxlength="7" placeholder="Date d'expiration">
                </div>
                </div>
                <?php
                if (isset($_SESSION['message']) && $_SESSION['message'] == 'no'){
                    echo "<div id='cache' class='aff'>";
                    echo "</br> Moyen de paiement incorrect, veuillez essayer de nouveau. </div>";
                    $_SESSION['message'] = '';
                }
                echo "</br> Adresse de livraison : ";
                echo "<select id='livraison' onChange='update()'>";
                $reqAdresse = "SELECT * FROM ADRESSE WHERE idClient = :pidClient";
                $Adresse = oci_parse($connect,$reqAdresse);
                oci_bind_by_name($Adresse, ':pidClient', $idClient);
                $resultAdr = oci_execute($Adresse);
                if (!$resultAdr) {
                    $b = oci_error($Adresse);
                    print htmlentities($b['message'] . ' pour cette requete : ' . $b['sqltext']);
                }
                $m = 0;
                while (($adresse = oci_fetch_assoc($Adresse)) != false) {
                    echo "<option>".$adresse['ADRESSECLIENT']."</option>";
                    $m = $m + 1;
                }
                oci_free_statement($lePaiement);
                echo "</select>";
                ?>
                <div>
                </br>
                <button id="button" onclick="openId2()">Ajouter une nouvelle adresse</button>
                </br>
                <?php 
                if (isset($_SESSION['message']) && $_SESSION['message'] == 'vide'){
                    echo "<div id='cache' class='aff'>";
                    echo "</br> Adresse entrée incorrecte, veuillez essayer de nouveau. </div>";
                    $_SESSION['message'] = '';
                } 
                ?>
                </br>
                <?php  echo "<form id='formAdresse' method ='post' action='traitementAdresseBis.php'>"; ?>
                <input id="adresse" class='close-popup' type="text" name="adresse" maxLength='100' placeholder="Adresse de Livraison"/>
                <div id='line'> </div>
                <input type="submit" class='close-popup' id="buttonAdresse" name="AjoutAdresse" value="Ajouter">
                </div> <?php
                echo "<div style='padding-bottom: 20px;'> </br> Mes adresses : </div>";
                $reqAdresse = "SELECT * FROM ADRESSE WHERE idClient = :pidClient";
                $Adresse = oci_parse($connect,$reqAdresse);
                oci_bind_by_name($Adresse, ':pidClient', $idClient);
                $resultAdr = oci_execute($Adresse);
                if (!$resultAdr) {
                    $b = oci_error($Adresse);
                    print htmlentities($b['message'] . ' pour cette requete : ' . $b['sqltext']);
                }
                echo "<form>";
                echo "</form>";
                while (($adresse = oci_fetch_assoc($Adresse)) != false) {
                    $adr = $adresse['ADRESSECLIENT'];
                    echo "<form action='deleteAdresse.php?adr=$adr' method = 'POST'>"; 
                    echo $adresse['ADRESSECLIENT'];
                    echo "<button onclick='this.form.submit()'>&times;</button> </br>";
                    echo "</form>";
                }
                oci_free_statement($Adresse);
                $reqMoyen = "SELECT * FROM PAIEMENT WHERE idClient = :pidClient";
                $lePaiement = oci_parse($connect,$reqMoyen);
                oci_bind_by_name($lePaiement, ':pidClient', $idClient);
                $resultPaie = oci_execute($lePaiement);
                if (!$resultPaie) {
                    $y = oci_error($lePaiement);
                    print htmlentities($y['message'] . ' pour cette requete : ' . $y['sqltext']);
                }
                echo "</br>Mes moyens de paiements : </br></br>";
                while (($paiement = oci_fetch_assoc($lePaiement)) != false) {
                    $paie = $paiement['NUMCARTE'];
                    $idPaiement = $paiement['IDPAIEMENT'];
                    echo "<form action='deletePaiement.php?paie=$paie&idpaie=$idPaiement' method = 'POST'>"; 
                    $ymd = $paiement['EXPICARTE'];
                    $arr = str_split($paiement['NUMCARTE']);
                    $savecvv = $paiement['CVVCARTE'];
                    echo "CB - N° XXXX-XXXX-XXXX-".$arr[12].$arr[13].$arr[14].$arr[15]." - Date d'expiration : ".$ymd;
                    echo "<button onclick='this.form.submit()'>&times;</button> </br>";
                    echo "</form>";
                }
                oci_free_statement($lePaiement);
            } else {
                ?>
            <div class='redirConn' style='padding-bottom: 20px; padding-top: 20px'>
                <span style='font-weight: bold'>Continuer avec mon adresse e-mail ou mon login : </span> </br> </br>
                <?php
                    if (isset($_GET['msgErreurConn'])) {
                        echo "<h2>".htmlentities($_GET['msgErreurConn'])."</h2>";
                    }
                ?>
                <form action = 'TraitRedirection.php' method = 'POST'>
                    E-mail / Login : <input type = 'text' name = 'id' class='cadreInput' maxlength="64"/> </br></br>
                    <input type = 'submit' id='valid' name = 'Valider' value = 'Valider'/> </br>
                </form>
            </div>
            <?php }  ?>
    </div>
                </div>
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
    <?php include_once("./include/footer.php"); ?>
</body>
</html>

