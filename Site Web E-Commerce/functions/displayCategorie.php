<?php
$cpt = 0;
$couleur = "";
$taille = "";
$qteP = "";
$cptAffAjout = 0;

function replace_accents($nom) {
    $to_replace = array("etement", "alecon", "iece");
    $replaced_by = array("êtement", "aleçon", "ièce");
    $nom = str_replace($to_replace, $replaced_by, $nom);
    return $nom;
}

function display_cat_main($nom_cat, $genre) {
    ?>
    <a class="categ" href="ConsultCategorie.php?nomCateg=<?php echo $nom_cat;?>&genre=<?php echo $genre;?>">
        <div class = "categDiv">
        <?php
            echo replace_accents($nom_cat);
        ?>
        </div>
    </a>

        <?php
}

function display_cat_sub($nom_cat, $id_cat, $genre) {
    ?>
    <a class="categ" href="ConsultProduct.php?nomSousCateg=<?php echo $nom_cat;?>&genre=<?php echo $genre;?>"> 
        <div class = "categDiv">
        <?php
            echo replace_accents($nom_cat);
        ?>
        </div>
    </a>

        <?php
}

function display_prod($prod, $prix, $img, $id) {
    ?>
    <a class="result" href="ConsultOneProduct.php?id=<?php echo $id;?>"> 
        
        <img class="resultImg" src="./images/defaultImage.jpg"/>
        <div class = "resultDiv">
        <?php
            echo $prod;
            echo "</br>";
            echo $prix." €";
            echo "</br>";
            echo $id;
            echo "</br>";
        ?>
        </div>
    </a>

        <?php
}

function replace_color($color) {
    $to_replace = array("TartanMarine");
    $replaced_by = array("Tartan Marine");
    $color = str_replace($to_replace, $replaced_by, $color);
    return $color;
}

$nbProduit = 0;
function count_prod($nbProd) {
    $GLOBALS['nbProduit'] = $GLOBALS['nbProduit'].$nbProd;
}

function display_detail_prod($prod, $id, $color, $tailleP, $matP, $descP, $prix, $qte, $img) {
    ?>
    <?php
    $GLOBALS['cpt'] = $GLOBALS['cpt'] + 1;
    if ($GLOBALS['cpt'] < $GLOBALS['nbProduit']) {
        $GLOBALS['couleur'] = $GLOBALS['couleur'].$color." ";
        $GLOBALS['taille'] = $GLOBALS['taille'].$tailleP." ";
        $GLOBALS['qteP'] = $GLOBALS['qteP'].$qte." ";
    } 
    else if ($GLOBALS['cpt'] == $GLOBALS['nbProduit']) {
        ?> 
        <div class="prod">     
            <img class="prodImg" src="./images/defaultImage.jpg"/>
            <div class = "prodDiv">
            <?php
                $GLOBALS['couleur'] = $GLOBALS['couleur'].$color;
                $GLOBALS['taille'] = $GLOBALS['taille'].$tailleP;
                $GLOBALS['qteP'] = $GLOBALS['qteP'].$qte;
                echo "Description du produit : </br></br>";
                echo $prod;
                echo "</br>";
                echo "</br>";
                echo "Matière du produit : ".$matP;
                echo "</br>";
                echo "</br>";
                echo "Plus d'informations sur le produit : </br>".$descP;
                echo "</br>";
                echo "</br>";
                echo "Prix : ".$prix." €";
                echo "</br>";
                ?> <div class = "form"> <?php
                echo "Coloris disponible : </br></br>";
                echo "<form method='post' action='AjoutPanier.php?id=$id&nomProd=$prod&descProd=$descP&prixProd=$prix'>"; 
                echo "<select name='LDColor' id='color' onchange='javascript: dynamicdropdown(this.options[this.selectedIndex].value);' required>";
                $tabColor = explode(" ", $GLOBALS['couleur']);
                $tabVerif = array();
                $i = 0;
                echo "<option selected disabled='disabled'> Choisissez une couleur </option>";
                foreach ($tabColor as $result) {
                    if (!in_array($result, $tabVerif)) {
                        $tabVerif[$i] =  $result;
                        echo "<option value = '$result'>".replace_color($result)."</option>";
                    }
                    $i = $i + 1;
                }
                echo "</select>";
                // echo "</form>";
                ?>  <?php
                echo "</br></br>";
                echo "Taille : </br></br>";
                // echo "<form method='post'>"; 
                echo "<select id='AffichageCorrespondant' name='LDTaille' id='Sub1' required>";
                echo "<option selected disabled='disabled' place> Choisissez une taille </option>";
                echo "</select>";
                // echo "</form>";
                $tabQuantite = explode (" ", $GLOBALS['qteP']);
                echo "</br>";
                ?>
                <!-- <pre> -->
                    <?php
                // print_r($tabQuantite);
                echo "<span class='resultQte' id='quantiteStock'></span>";
                ?>
                <!-- </pre> -->
                <div id="myDiv"></div>
                <div id="myDiv2"></div>
                <?php
                // echo "<select id='qteAff'>";
                // echo "<option selected disabled='disabled' place> Quantité </option>";
                // echo "</select>";
                ?>
                <!-- <input type="button" id="buttonPan" onclick="location.href='Panier.php';" value="Ajouter au Panier" /> -->
                <div id="myDiv3"></div>
                <?php 
                echo "</form>";
                ?>
                </div>
                <?php
            }
            ?>
            <script>
                //const openModalButtons = document.querySelectorAll('[data-modal-target]')
                /* const closeModalButtons = document.querySelectorAll('[data-close-button]')
                const overlay = document.getElementById('overlay')
                const popup = document.getElementByID('popup')

                openModalButtons.forEach(button => {
                button.addEventListener('click', () => {
                    const modal = document.querySelector(button.dataset.modalTarget)
                    openModal(modal)
                })
                })

                overlay.addEventListener('click', () => {
                const modals = document.querySelectorAll('.modal.active')
                modals.forEach(popup => {
                    closeModal(popup)
                })
                })

                closeModalButtons.forEach(button => {
                button.addEventListener('click', () => {
                    const modal = button.closest('.popup')
                    closeModal(modal)
                })
                })

                function closeModal(modal) {
                if (modal == null) return
                    popup.style.visibility = "hidden";
                    overlay.classList.remove('active')
                }
                */
                
                function doHTML(list){
                let string ="";
                let index = 0;
                list.forEach(element => {
                string += `<option value="${element}">${element}</option>`;
                });
                return string;
                }
                <?php 
                $tabTaille = explode(" ", $GLOBALS['taille']);
                ?>
                function dynamicdropdown(color){
                var passedArrayColor = <?php echo json_encode($tabColor); ?>;
                let getResultColor = [];
                for (i = 0; i < passedArrayColor.length; i++) {
                    let varRecupColor = [passedArrayColor[i]];
                    getResultColor[i] = varRecupColor;
                };

                var passedArraySize = <?php echo json_encode($tabTaille); ?>;
                let getResultSize = [];
                for (i = 0; i < passedArraySize.length; i++) {
                    let varRecupSize = [passedArraySize[i]];
                    getResultSize[i] = varRecupSize;
                };

                var passedArrayQte = <?php echo json_encode($tabQuantite); ?>;
                let getResultQuantite = [];
                for (i = 0; i < passedArrayQte.length; i++) {
                    let varRecupQte = [passedArrayQte[i]];
                    getResultQuantite[i] = varRecupQte;
                };

                var but = document.createElement("input");
                but.setAttribute("type","submit");
                but.setAttribute("id","buttonPanier");
                but.setAttribute("name","Ajout");
                but.setAttribute("value","Ajouter au Panier");
                var myDiv3 = document.getElementById("myDiv3");

                myDiv3.innerHTML = "<input type = text placeholder = ''>"
                let AffichageCorrespondant = document.getElementById("AffichageCorrespondant");
                AffichageCorrespondant.innerHTML = "<input type = text placeholder = " + " " + ">";
                document.getElementById("quantiteStock").innerHTML = "<input type = text placeholder = ''>";
                var passedArrayGeneral = <?php echo json_encode($tabTaille); ?>;
                for (i = 0; i < passedArrayGeneral.length; i++) {
                    if (color==getResultColor[i]){
                            AffichageCorrespondant.innerHTML += doHTML(getResultSize[i]);
                            if (AffichageCorrespondant.options[AffichageCorrespondant.selectedIndex].text==getResultSize[i]) {
                                document.getElementById("quantiteStock").style.border = '1px solid grey';
                                document.getElementById("quantiteStock").innerHTML = "Quantité : " + getResultQuantite[i];
                                // document.getElementById("qteAff").innerHTML = "<input type = text placeholder = ''>";
                                var myDiv = document.getElementById("myDiv");
                                myDiv.innerHTML = "<input type = text placeholder = ''>"
                                var myDiv2 = document.getElementById("myDiv2");
                                if (getResultQuantite[i] == 0) {
                                    myDiv2.innerHTML = "Rupture de stock ! </br></br>";
                                    but.setAttribute("disabled","");
                                } else {
                                    myDiv2.innerHTML = "</br> En stock ! </br></br>";
                                    but.removeAttribute("disabled");
                                }
                                var sel = document.createElement("select");
                                sel.setAttribute("id","qteAff");
                                sel.setAttribute("name","quantiteSelectionne");
                                (function() {
                                    for(var d=1;d<=getResultQuantite[i];d++)
                                    {
                                        myDiv.appendChild(sel);
                                        var option = "<option value='" + d + "'>" + d + "</option>";
                                        sel.innerHTML += option;
                                    }
                                }());
                            }
                    }
                }
                
                myDiv3.appendChild(but);
                }

                var e = document.getElementById("AffichageCorrespondant");
                var d = document.getElementById("color");
                function onChange() {
                    var value = e.value;
                    var text = e.options[e.selectedIndex].text;
                    var passedArrayGeneral = <?php echo json_encode($tabTaille); ?>;

                    var valueCol = d.value;
                    var textCol = d.options[d.selectedIndex].text;
                    
                    var form = document.createElement("form");
                    form.setAttribute("method", "post");
                    form.setAttribute("action", "ConsultOneProduct.php");
                    var but = document.createElement("input");
                    but.setAttribute("type","submit");
                    but.setAttribute("id","buttonPanier");
                    but.setAttribute("name","Ajout");
                    but.setAttribute("value","Ajouter au Panier");
                    form.append(but);
                    var myDiv3 = document.getElementById("myDiv3");

                    myDiv3.innerHTML = "<input type = text placeholder = ''>"

                    var passedArraySize = <?php echo json_encode($tabTaille); ?>;
                    let getResultSize = [];
                    for (i = 0; i < passedArraySize.length; i++) {
                        let varRecupSize = [passedArraySize[i]];
                        getResultSize[i] = varRecupSize;
                    };

                    var passedArrayColor = <?php echo json_encode($tabColor); ?>;
                    let getResultColor = [];
                    for (i = 0; i < passedArrayColor.length; i++) {
                        let varRecupColor = [passedArrayColor[i]];
                        getResultColor[i] = varRecupColor;
                    };

                    var passedArrayQte = <?php echo json_encode($tabQuantite); ?>;
                    let getResultQuantite = [];
                    for (i = 0; i < passedArrayQte.length; i++) {
                        let varRecupQte = [passedArrayQte[i]];
                        getResultQuantite[i] = varRecupQte;
                    };

                    for (i = 0; i < passedArrayGeneral.length; i++) {
                        if (textCol==getResultColor[i]) {
                            if (text==getResultSize[i]) {
                                document.getElementById("quantiteStock").style.border = '1px solid grey';
                                document.getElementById("quantiteStock").innerHTML = "Quantité : " + getResultQuantite[i];
                                // document.getElementById("qteAff").innerHTML = "<input type = text placeholder = ''>";
                                var myDiv = document.getElementById("myDiv");
                                myDiv.innerHTML = "<input type = text placeholder = ''>"
                                var myDiv2 = document.getElementById("myDiv2");
                                if (getResultQuantite[i] == 0) {
                                    myDiv2.innerHTML = "Rupture de stock ! </br></br>";
                                    but.setAttribute("disabled","");
                                } else {
                                    myDiv2.innerHTML = "</br> En stock ! </br></br>";
                                    but.removeAttribute("disabled");
                                }
                                var sel = document.createElement("select");
                                sel.setAttribute("id","qteAff");
                                sel.setAttribute("name","quantiteSelectionne");
                                (function() {
                                    for(var d=1;d<=getResultQuantite[i];d++)
                                    {
                                        myDiv.appendChild(sel);
                                        var option = "<option value='" + d + "'>" + d + "</option>"
                                        sel.innerHTML += option;
                                    }
                                }());
                            }
                            myDiv3.appendChild(but);
                        }
                    }
                   
                }
                e.onchange = onChange;
                onChange();
            </script>
            <?php
            if (isset($_SESSION['message'])){
                if($_SERVER['REQUEST_METHOD'] == "GET" && $_SESSION['message']!='' && $GLOBALS['cptAffAjout'] < 1){   
                    echo "<div id='popup' class = 'popup'>";
                    echo ($_SESSION['message']); 
                    echo "<div class = 'headerPopup'>";
                    echo "<button data-close-button class='close-button' onclick='closePopup()'>&times;</button>";
                    echo "</div>";
                    echo "<button type = 'button' class='button' onclick='redirectPanier()'> Voir mon panier </button>";
                    echo "<button type = 'button' class='button' onclick='closePopup()'> Continuer mes achats </button>";
                    echo "</div>";
                    $GLOBALS['cptAffAjout'] = $GLOBALS['cptAffAjout'] + 1;
                    $_SESSION['message'] = '';
                    echo"<div id='overlay'></div>";
                    //echo "<button data-modal-target='#modal'>Open Modal</button>";
                    /* $mess = $_SESSION['message'];
                    echo "<div class='modal' id='modal'>";
                    echo "<div class='modal-header'>";
                    echo "<div class='title'>$mess</div>";
                    echo "<button data-close-button class='close-button'>&times;</button>";
                    echo "</div>";
                    echo "<div class='modal-body'>";
                    echo "<button type = 'button' class='button'> Voir mon panier </button>";
                    echo "<button type = 'button' class='button'> Continuer mes achats </button>";
                    echo "</div>";
                    echo "</div>";
                    echo "<div id='overlay'></div>";*/
                }
            }
            ?>
            <script>
                let popup = document.getElementById("popup");
                let overlay = document.getElementById("overlay")

                function closePopup(){
                    overlay.classList.add("close-popup");
                    popup.classList.add("close-popup");
                }

                function redirectPanier(){
                    document.location.href='Panier.php'
                }

                overlay.addEventListener('click', () => {
                    overlay.classList.add("close-popup");
                    popup.classList.add("close-popup");
                })
            </script>
            </div>
        </div>
    <?php
}
?>
