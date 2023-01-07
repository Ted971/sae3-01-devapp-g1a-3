<footer id="contact">
<div class="footer">
        <div class="footer_bottom">
            <div id="nq_footerlinks">
                <div class="last_line">
                    <div class="copyright"> © La Parure Française 2022</div>
                    <ul class="links">
                        <li class="bottom"> <a href="Paiement.php" title="Paiement 100% sécurisé"> Paiement 100% sécurisé </a></li>
                        <li class="bottom"> <a href="ConditionDeVente.php" title="CGV"> CGV </a></li>
                        <li class="bottom"> <a href="MentionsLegales.php" title="Mentions légales"> Mentions légales </a></li>
                        <li class="bottom"> <a href="DonneesPerso.php" title="Données personnelles"> Données personnelles </a></li>
                        <li class="bottom"> <a href="FormContact.php" title="Contact"> Nous contacter </a></li>
                        <?php if (isset($_COOKIE['cookIdent'])) { ?>
                            <li class="bottom"> <a href="GestionCookie.php" title="Suppression des cookies"> Suppression des cookies </a></li>
                        <?php } ?>
                    </ul>
                    <div class="social_network">
                        <a href="https://linktr.ee/la_parure_francaise" title="">Nos réseaux sociaux</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>