<html>
<head>
	<title>Menu administrateur</title>
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
    <?php 
    require_once('connect.inc.php');
    echo "<a href='admin.php'>Revenir</a>";
$tab = array();
$i = 0;
 echo "<div style = 'padding-bottom: 3%'> </div>";
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
    echo"<div style='display: flex run-in;'>";
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
        array_push($tab, $client['PSEUDOCLIENT']);
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
        echo "<form action='deleteCompte.php' method = 'POST'>";
        echo "<input type = 'text' name = 'pseudoC' value = '$tab[$i]'";
        echo "<button onclick='this.form.submit()'>&times;</button> </br></br>";
        echo "</form>";
        $i = $i+1;
    echo"</div>";
}
?>
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