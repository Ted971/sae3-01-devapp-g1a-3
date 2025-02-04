<?php session_start() ;
include("connect.inc.php");?>
<header>
  <nav class="header_nav">
    
    <img class="logo" src="images/LogoParure.png" alt="Logo de notre entreprise"/>

    <ul>
      <li style = "list-style-type: none;">
        <a href="Entreprise.php" class="Header__nav__link--hasSubmenuv2"> 
            <span class="padded-element" data-text="Entreprise" style='font-weight: bold; color: red;'>Notre entreprise</span> 
        </a>
        <div class="Header__nav__submenu Header__nav__submenu--topLevel">
          <div class="container">
            <div class="Header__nav__submenu__blockv2">
              <ul>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#a_propos" class="Header__nav__link--hasSubmenu">
                    <span style="color: #0000EE;"> À propos de nous </span> 
                  </a>
                </li>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#histoire" class="Header__nav__link--hasSubmenu">
                    <span style="color: #0000EE;"> Notre histoire</span> 
                  </a>
                </li>
                <li class=""> <button class="toggle__submenus" aria-expanded="false"></button>
                  <a href="Entreprise.php#equipe" class="Header__nav__link--hasSubmenu">
                    <span style="color: #0000EE;"> Notre équipe</span>
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
          <span class="padded-element" data-text="Masculin" style='font-weight: bold; color: red;'> Articles Homme </span> 
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
                  echo '<a href="ConsultCategorie.php?nomCateg=' . $categ['NOMCATEGORIE'] . '&genre='.'H'.'" class="Header__nav__link--hasSubmenu" style="color: #0000EE;"><span>' . $nomCategorie . '</span></a>';
                  echo '<div class="Header__nav__submenu">';
                  $req2 = "SELECT C2.nomCategorie, C2.genreCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie AND C2.genreCategorie IN ('H', 'H/F')";
                  $lesSousCategories = oci_parse($connect, $req2);
                  oci_bind_by_name($lesSousCategories, ":pCategorie", $categ['NOMCATEGORIE']);
                  $result = oci_execute($lesSousCategories);
                  echo '<div class="Header__nav__submenu__categories">';
                  echo '<ul>';
                  while (($souscateg = oci_fetch_assoc($lesSousCategories)) != false) {
                    echo '<li class=""><a href="ConsultProduct.php?nomSousCateg=' . $souscateg['NOMCATEGORIE'] . '&genre='.'H'.'" class="Header__nav__link" style="font-weight: 550; text-align: left">' . $souscateg['NOMCATEGORIE'] . '</a></li>';
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
          <span data-text="Féminin" style='font-weight: bold; color: red;'> Articles Femme </span> 
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
                  echo '<a href="ConsultCategorie.php?nomCateg=' . $categ['NOMCATEGORIE'] . '&genre='.'F'.'" class="Header__nav__link--hasSubmenu" style="color: #0000EE;"><span>' . $nomCategorie . '</span></a>';
                  echo '<div class="Header__nav__submenu">';
                  $req2 = "SELECT C2.nomCategorie, C2.genreCategorie FROM Categorie C, Categorie C2 WHERE C.idCategorie = C2.idCategoriePere AND C.nomCategorie = :pCategorie AND C2.genreCategorie IN ('F', 'H/F')";
                  $lesSousCategories = oci_parse($connect, $req2);
                  oci_bind_by_name($lesSousCategories, ":pCategorie", $categ['NOMCATEGORIE']);
                  $result = oci_execute($lesSousCategories);
                  echo '<div class="Header__nav__submenu__categories">';
                  echo '<ul>';
                  while (($souscateg = oci_fetch_assoc($lesSousCategories)) != false) {
                    echo '<li class=""><a href="ConsultProduct.php?nomSousCateg=' . $souscateg['NOMCATEGORIE'] . '&genre='.'F'.'" class="Header__nav__link" style="font-weight: 550; text-align: left">' . $souscateg['NOMCATEGORIE'] . '</a></li>';
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
        <form action="traitRecherche.php" method="get" role="search" class="SearchBox">
          <input type="search" placeholder="Recherche" required="" name="recherche" autocomplete="off" value=""> 
          <button type="submit" title="Rechercher">
            <img src="images/loupe.png" alt="recherche" width="15" height="14">
            </svg><span class="visuallyhidden">Rechercher</span></button>
        </form>
    </div>
    <div id="images">
      <a href="index.php"><img src="images/maison.png" title="Accueil" alt="Accueil"></a>
      <a href="FormConnexion.php" title="Voir mon compte client"><img src="images/compte.png" alt="Compte"></a>
      <div class='panier1'> 
      <a href="Panier.php"><img src="images/panier.png" title='Panier' alt="Panier"></a>
      <span class="cart-count"> 
      <?php 
      $reqQte = "SELECT COUNT(*) AS CO FROM PANIER WHERE idPanier = :idPan";
      $lePanier = oci_parse($connect, $reqQte);
      $sess_id = session_id();
      oci_bind_by_name($lePanier,":idPan", $sess_id);
      $resultPan = oci_execute($lePanier);
      if (!$resultPan) {
          $m = oci_error($lePanier);
          print htmlentities($m['message'] . ' pour cette requete : ' . $m['sqltext']);
      }
      $compteur = 0;
      while (($recupQte = oci_fetch_assoc($lePanier)) != false) {
          $compteur = $recupQte['CO'];
      }
      oci_free_statement($lePanier);
      if ($compteur != 0) {
      echo $compteur;
      }
      ?>
      </span>
      </div>
      <?php 
      if (isset($_SESSION['acces'])) {
        echo '<a href="Deconnexion.php"> <img src="images/deco.png"> </a>';
      }
      ?>
    </div>
  </nav>
</header>