<footer id="contact">
<div class="footer">
        <div class="footer_bottom">
            <div id="nq_footerlinks">
                <div class="last_line">
                    <div class="copyright"> © La Parure Française 2023</div>
                    <ul class="links">
                        <li class="bottom"> <a href="Paiement.php" title="Paiement 100% sécurisé" style="color: #0000EE;"> Paiement 100% sécurisé </a></li>
                        <li class="bottom"> <a href="ConditionDeVente.php" title="CGV" style="color: #0000EE;"> CGV </a></li>
                        <li class="bottom"> <a href="MentionsLegales.php" title="Mentions légales" style="color: #0000EE;"> Mentions légales </a></li>
                        <li class="bottom"> <a href="DonneesPerso.php" title="Données personnelles" style="color: #0000EE;"> Données personnelles </a></li>
                        <?php if (isset($_SESSION['acces'])) { ?>
                        <li class="bottom"> <a href="FormContact.php" title="Contact" style="color: #0000EE;"> Nous contacter </a></li>
                        <?php } ?> 
                        <?php if (isset($_COOKIE['cookIdent'])) { ?>
                            <li class="bottom"> <a href="GestionCookie.php" title="Suppression des cookies" style="color: #0000EE;"> Suppression des cookies </a></li>
                        <?php } ?>
                    </ul>
                    <div class="social_network">
                        <a href="https://linktr.ee/la_parure_francaise" target="_blank" title="Nos réseaux" style="color: #0000EE;">Nos réseaux sociaux</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>