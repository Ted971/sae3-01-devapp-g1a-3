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
    <a href='FormConnexion.php'>Revenir sur votre compte</a><BR><BR>
    <?php
    $i = 0;
    $cpt = 0;
    $j = 0;
    $dollar = 0;
    $total = array();
    $tabCommande = array();
    error_reporting(0);
    include("connect.inc.php");
                $req = "SELECT CO.idcommande, CO.idPaiement, CO.idClient, CO.dateCommande, P.idProduit, P.nomProduit, D.descriptionProduit, D.matiereProduit, D.prixProduit, CS.qteCommandee, CS.tailleProduit, CS.colorisProduit FROM COMMANDE CO, CLIENT C, CONSTITUER CS, DETAILPRODUIT D, PRODUIT P, PAIEMENT PA
                WHERE C.pseudoClient = :pidClient
                AND CO.idClient = C.idClient
                AND CO.idClient = C.idClient
                AND CO.idCommande = CS.idCommande
                AND CO.idPaiement = PA.idPaiement
                AND CS.idProduit = P.idProduit
                AND D.idProduit = P.idProduit
                ORDER BY CO.IDCOMMANDE";
                $commandes = oci_parse($connect, $req);
                $nomCli = $_SESSION['nom'];
                oci_bind_by_name($commandes, ":pidClient", $nomCli);
                $result = oci_execute($commandes);
                if (!$result) {
                    $e = oci_error($lesCategories);
                    print htmlentities($e['message'] . ' pour cette requete : ' . $e['sqltext']);
                }
                while (($commande = oci_fetch_assoc($commandes)) != false) {
                    if($cpt == 0){
                        $tabCommande = [
                            $commande['IDCOMMANDE'],
                            $commande['DATECOMMANDE'],
                            $commande['NOMPRODUIT'],
                            $commande['DESCRIPTIONPRODUIT'],
                            $commande['QTECOMMANDEE'],
                            $commande['PRIXPRODUIT'],
                            $commande['IDPRODUIT'],
                            $commande['TAILLEPRODUIT'],
                            $commande['COLORISPRODUIT'],
                            $cpt
                        ];
                    }else{
                        array_push($tabCommande, $commande['IDCOMMANDE']);
                        array_push($tabCommande, $commande['DATECOMMANDE']);
                        array_push($tabCommande, $commande['NOMPRODUIT']);
                        array_push($tabCommande, $commande['DESCRIPTIONPRODUIT']);
                        array_push($tabCommande, $commande['QTECOMMANDEE']);
                        array_push($tabCommande, $commande['PRIXPRODUIT']);
                        array_push($tabCommande, $commande['IDPRODUIT']);
                        array_push($tabCommande, $commande['TAILLEPRODUIT']);
                        array_push($tabCommande, $commande['COLORISPRODUIT']);
                        array_push($tabCommande, $cpt);

                    }

                    /*if($i != $commande['IDCOMMANDE']){
                        $i = $commande['IDCOMMANDE'];
                        array_push($total, $commande['QTECOMMANDEE']*$commande['PRIXPRODUIT']);
                        echo next($commande);
                        echo "Référence de la commande : ".$commande['IDCOMMANDE']."<BR> Date de la commande : ".$commande['DATECOMMANDE']."<BR>";
                        echo "Produit Commandée : ".$commande['NOMPRODUIT']."<BR> Description : ".$commande['DESCRIPTIONPRODUIT']."<BR> ID produit : ".$commande['IDPRODUIT']."<BR> Taille produit : ".$commande['TAILLEPRODUIT']."<BR> Coloris Produit : ".$commande['COLORISPRODUIT']."<BR> Quantitée commandée : ".$commande['QTECOMMANDEE']."<BR> Prix unitaire : ".$commande['PRIXPRODUIT']."<BR><BR>";     
                        $j = $j+1;
                    }else{
                    $total[$j-1] = $total[$j-1] + $commande['QTECOMMANDEE']*$commande['PRIXPRODUIT'];
                    echo "Produit Commandée : ".$commande['NOMPRODUIT']."<BR> Description : ".$commande['DESCRIPTIONPRODUIT']."<BR> ID produit : ".$commande['IDPRODUIT']."<BR> Taille produit : ".$commande['TAILLEPRODUIT']."<BR> Coloris Produit : ".$commande['COLORISPRODUIT']."<BR> Quantitée commandée : ".$commande['QTECOMMANDEE']."<BR> Prix unitaire : ".$commande['PRIXPRODUIT']."<BR><BR>";
                    echo "Prix total : ".$total[$j-1]."<BR><BR>";
                }*/
                    $cpt = $cpt+1;
                    
                }

            $taille = count($tabCommande);

            for($i; $i<$taille; $i = $i+10){
                if($tabCommande[$i+10] != $tabCommande[$i]){
                    array_push($total, $tabCommande[$i+4]*$tabCommande[$i+5]);
                    echo "Référence de la commande : ".$tabCommande[$i+0]."<BR> Date de la commande : ".$tabCommande[$i+1]."<BR>";
                    echo "Produit Commandée : ".$tabCommande[$i+2]."<BR> Description : ".$tabCommande[$i+3]."<BR> ID produit : ".$tabCommande[$i+6]."<BR> Taille produit : ".$tabCommande[$i+7]."<BR> Coloris Produit : ".$tabCommande[$i+8]."<BR> Quantitée commandée : ".$tabCommande[$i+4]."<BR> Prix unitaire : ".$tabCommande[$i+5]."<BR><BR>";
                    echo "Prix total : ".$total[$j]."€<BR><BR>";
                    $j = $j+1;
                }else{
                    echo "Référence de la commande : ".$tabCommande[$i+0]."<BR> Date de la commande : ".$tabCommande[$i+1]."<BR>";
                    while ($tabCommande[$i+10] == $tabCommande[$i] || $tabCommande[$i-10] == $tabCommande[$i]){
                        echo "Produit Commandée : ".$tabCommande[$i+2]."<BR> Description : ".$tabCommande[$i+3]."<BR> ID produit : ".$tabCommande[$i+6]."<BR> Taille produit : ".$tabCommande[$i+7]."<BR> Coloris Produit : ".$tabCommande[$i+8]."<BR> Quantitée commandée : ".$tabCommande[$i+4]."<BR> Prix unitaire : ".$tabCommande[$i+5]."<BR><BR>";
                        $dollar = $dollar + $tabCommande[$i+4]*$tabCommande[$i+5];
                        if($tabCommande[$i+10] != null ){
                            $i = $i+10;      
                        }
                    }
                    array_push($total, $dollar);
                    echo "Prix total : ".$total[$j]."€<BR><BR>";
                    $j = $j+1;
                    $i = $i-10;
                    }
                }
                

                /*echo "total";
                print_r($total);
                echo "commandes";
                var_dump($tabCommande);*/
                if ($cpt == 0){
                    echo "<h1>Vous n'avez pas passée de commande</h1>";
                }
    ?>

    <?php include_once("./include/footer.php"); ?>
</body>
</html>