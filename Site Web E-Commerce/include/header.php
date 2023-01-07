<?php session_start() ;
include("connect.inc.php");?>
<header>
  <nav class="header_nav">
    
    <img class="logo" src="images/LogoParure.png" alt="Logo de notre entreprise"/>

    <ul>
      <li style = "list-style-type: none;">
        <a href="Entreprise.php" class="Header__nav__link--hasSubmenuv2"> 
            <span class="padded-element" data-text="Entreprise">Notre entreprise</span> 
        </a>
        <div class="Header__nav__submenu Header__nav__submenu--topLevel">
          <div class="container">
            <div class="Header__nav__submenu__blockv2">
              <ul>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#a_propos" class="Header__nav__link--hasSubmenu">
                    <span> À propos de nous </span> 
                  </a>
                </li>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#histoire" class="Header__nav__link--hasSubmenu">
                    <span> Notre histoire</span> 
                  </a>
                </li>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#equipe" class="Header__nav__link--hasSubmenu">
                    <span> Notre équipe</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </li>
      <li class="header_marker"> 
      <li class="">
      <a href="ConsultMainCategorie.php?genre=H" class="Header__nav__link--hasSubmenuv2">  
          <span class="padded-element" data-text="Masculin"> Masculin</span> 
        </a>
        <div class="Header__nav__submenu Header__nav__submenu--topLevel">
          <div class="container">
            <div class="Header__nav__submenu__block">
              <ul>
                <?php
                $req = "SELECT nomCategorie, genreCategorie FROM Categorie WHERE idCategorie < 6";
                $lesCategories = oci_parse($connect, $req);
                $result = oci_execute($lesCategories);
                while (($categ = oci_fetch_assoc($lesCategories)) != false) {
                  if ($categ['NOMCATEGORIE'] == 'Sous-vetements') {
                    $nomCategorie = 'Sous-vêtements';
                  } else if ($categ['NOMCATEGORIE'] == 'Vetements') {
                    $nomCategorie = 'Vêtements';
                  } else {
                    $nomCategorie = $categ['NOMCATEGORIE'];
                  }
                  echo '<li class=""> <button class="toggle__submenus" aria-expanded="false"></button>';
                  echo '<a href="ConsultCategorie.php?nomCateg=' . $categ['NOMCATEGORIE'] . '&genre='.'H'.'" class="Header__nav__link--hasSubmenu"><span>' . $nomCategorie . '</span></a>';
                  echo '<div class="Header__nav__submenu">';
                  $req2 = "SELECT C2.nomCategorie, C2.genreCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie AND C2.genreCategorie IN ('H', 'H/F')";
                  $lesSousCategories = oci_parse($connect, $req2);
                  oci_bind_by_name($lesSousCategories, ":pCategorie", $categ['NOMCATEGORIE']);
                  $result = oci_execute($lesSousCategories);
                  echo '<div class="Header__nav__submenu__categories">';
                  echo '<ul>';
                  while (($souscateg = oci_fetch_assoc($lesSousCategories)) != false) {
                    echo '<li class=""><a href="ConsultProduct.php?nomSousCateg=' . $souscateg['NOMCATEGORIE'] . '&genre='.'H'.'" class="Header__nav__link">' . $souscateg['NOMCATEGORIE'] . '</a></li>';
                  }
                  oci_free_statement($lesSousCategories);
                  echo '</ul></div>';
                  echo '</div></li>';
                }
                oci_free_statement($lesCategories);
                ?>
              </ul>
            </div>
          </div>
          </div>
      </li>
      <li class="header_marker"> 
      <li class="">
      <a href="ConsultMainCategorie.php?genre=F" class="Header__nav__link--hasSubmenuv2">  
          <span data-text="Féminin"> Féminin</span> 
        </a>
        <div class="Header__nav__submenu Header__nav__submenu--topLevel">
          <div class="container">
            <div class="Header__nav__submenu__block">
              <ul>
                <?php
                $req = "SELECT * FROM Categorie WHERE idCategorie < 6";
                $lesCategories = oci_parse($connect, $req);
                $result = oci_execute($lesCategories);
                while (($categ = oci_fetch_assoc($lesCategories)) != false) {
                  if ($categ['NOMCATEGORIE'] == 'Sous-vetements') {
                    $nomCategorie = 'Sous-vêtements';
                  } else if ($categ['NOMCATEGORIE'] == 'Vetements') {
                    $nomCategorie = 'Vêtements';
                  } else {
                    $nomCategorie = $categ['NOMCATEGORIE'];
                  }
                  echo '<li class=""> <button class="toggle__submenus" aria-expanded="false"></button>';
                  echo '<a href="ConsultCategorie.php?nomCateg=' . $categ['NOMCATEGORIE'] . '&genre='.'F'.'" class="Header__nav__link--hasSubmenu"><span>' . $nomCategorie . '</span></a>';
                  echo '<div class="Header__nav__submenu">';
                  $req2 = "SELECT C2.nomCategorie, C2.genreCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie AND C2.genreCategorie IN ('F', 'H/F')";
                  $lesSousCategories = oci_parse($connect, $req2);
                  oci_bind_by_name($lesSousCategories, ":pCategorie", $categ['NOMCATEGORIE']);
                  $result = oci_execute($lesSousCategories);
                  echo '<div class="Header__nav__submenu__categories">';
                  echo '<ul>';
                  while (($souscateg = oci_fetch_assoc($lesSousCategories)) != false) {
                    echo '<li class=""><a href="ConsultProduct.php?nomSousCateg=' . $souscateg['NOMCATEGORIE'] . '&genre='.'F'.'" class="Header__nav__link">' . $souscateg['NOMCATEGORIE'] . '</a></li>';
                  }
                  oci_free_statement($lesSousCategories);
                  echo '</ul></div>';
                  echo '</div></li>';
                }
                oci_free_statement($lesCategories);
                ?>
              </ul>
            </div>
          </div>
          </div>
      </li>
    </ul>
    <div id="headerSearch" class="Header__search">
        <form action="" method="get" role="search" class="SearchBox">
          <input type="search" placeholder="Recherche" required="" name="recherche" autocomplete="off" value=""> 
          <button type="submit" title="Rechercher">
            <img src="images/loupe.png" alt="recherche" width="15" height="14">
            </svg><span class="visuallyhidden">Rechercher</span></button>
        </form>
    </div>
    <div id="images">
      <a href="index.php"><img src="images/maison.png" alt="Accueil"></a>
      <a href="FormConnexion.php" title="Voir mon compte client"><img src="images/compte.png" alt="Compte"></a>
      <a href="Panier.php"><img src="images/panier.png" alt="Panier"></a>
      <?php 
      if (isset($_SESSION['acces'])) {
        echo '<a href="Deconnexion.php" onClick ="actionDelete()"> <img src="images/deco.png"> </a>';
      }
      ?>
    </div>
  </nav>
</header>

<script>
function actionDelete(){
  if(confirm('Supprimer les cookies ?')){
    <?php setcookie('cookIdent', "", time()-3600); ?>
    alert('Cookies supprimés !');
  }
}
</script>