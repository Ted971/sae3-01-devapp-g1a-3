<html>

<head>
    <title>Recapitulatif de commande</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="include/style.css">
    <link rel="stylesheet" type="text/css" href="include/style-footer.css">
    <link rel="stylesheet" type="text/css" href="include/style-header.css">
    <link rel="stylesheet" type="text/css" href="include/style-recap-commande.css">
</head>

<body>
    <?php
    error_reporting(0);
    require_once("connect.inc.php");
    session_start();
    if (!isset($_SESSION['acces'])) {
        header('Location:FormConnexion.php');
    }
    ?>
    <?php include("./include/header.php"); ?>
    <?php 

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
        $paysClient = $recupCli['PAYSCLIENT'];
    }
    oci_free_statement($leClient);

    $req = "SELECT * FROM Panier WHERE idPanier = :pIdPan";
    $lePanier = oci_parse($connect, $req);
    $sessPan = session_id();
    oci_bind_by_name($lePanier, ":pIdPan", $sessPan);
    $result = oci_execute($lePanier);
    if (!$result) {
        $e = oci_error($lePanier);
        print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
    }
    echo "<H1> Récapitulatif de commande </H1>";
    $TotalPanier = 0;
    $cpt = 0;
    $var = array();
    while (($panier = oci_fetch_assoc($lePanier)) != false) {
        $TotalPanier = $TotalPanier + ($panier['PRIXPRODUIT']*$panier['QTEPANIER']);
        $cptAjt = 0;
        for ($i = 0; $i < sizeof($var); $i++){
            $cpt = $cpt + 1;
        }
        $var[$cpt][0] = $panier['NOMPRODUIT'];
        $var[$cpt][1] = $panier['DESCRIPTIONPRODUIT'];
        $var[$cpt][2] = $panier['PRIXPRODUIT'];
        $var[$cpt][3] = $panier['TAILLEPRODUIT'];
        $var[$cpt][4] = $panier['COLORISPRODUIT'];
        $var[$cpt][5] = $panier['QTEPANIER'];

        $cpt = 0;
    }
    if ($TotalPanier != 0){
        for ($i = 0; $i < sizeof($var); $i++){
            echo "<div class = 'panier'>";
            for ($j = 0; $j < sizeof($var[$i]); $j++){
                if ($j == 5) {
                    echo "Quantité commandée : ".$var[$i][$j]."</br>";
                } else if ($j == 2) {
                    echo "Prix unitaire : ".$var[$i][$j]."€</br>";
                } else {
                    echo $var[$i][$j]."</br>";
                }
            }
            if ($paysClient == 'France'){
                $frais = 2.5; 
            } else if ($paysClient == 'Belgique') {
                $frais = 5;
            } else if ($paysClient == 'Espagne') {
                $frais = 7.5;
            }
            echo "</div>";
        }
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
        if ($_SESSION['message'] == 'no'){
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
        if ($_SESSION['message'] == 'vide'){
            echo "<div id='cache' class='aff'>";
            echo "</br> Adresse entrée incorrecte, veuillez essayer de nouveau. </div>";
            $_SESSION['message'] = '';
        } 
        ?>
        </br>
        <?php  echo "<form id='formAdresse' method ='post' action='traitementAdresse.php'>"; ?>
        <input id="adresse" class='close-popup' type="text" name="adresse" maxLength='100' placeholder="Adresse de Livraison"/>
        <div id='line'> </div>
        <input type="submit" class='close-popup' id="buttonAdresse" name="AjoutAdresse" value="Ajouter">
        </div>
        <?php
        echo "</form>";
        echo "Frais de livraison : ".$frais."€</br>";
        echo "</br> Total de la commande : ". ($TotalPanier+$frais)."€ </br> </br> " ;
        if ($h != 0 && $m != 0){
        echo "<form id='form' action='modifPanCommande.php' method='post'>";
        echo "<button name='clicked' onclick='this.form.submit()'>Confirmer la commande</button> </br>";
        echo "<div class='hidden'>";
        echo "<input type='text' name='liv' id='value'>";
        echo "<input type='text' name='paie' id='value2'>";
        echo "</div>";
        echo "</form>";
        }
        echo "</br>";
        echo "</div>";
    } else {
        header('Location: index.php');
    }
    oci_free_statement($lePanier);
    ?>
     <?php include("./include/footer.php"); ?>

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
    form.setAttribute("action", "traitementPaiement.php");
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
    
</body>

</html>