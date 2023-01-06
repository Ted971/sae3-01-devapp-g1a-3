-----------------------------------------------------------------------------
--       Tests sur les produits ----------------- **PASSED**
-- -----------------------------------------------------------------------------

-- 50 produits differents
SELECT COUNT(*) FROM Produit;

-- -----------------------------------------------------------------------------
--       Tests sur les clients ----------------- **PASSED**
-- -----------------------------------------------------------------------------

-- 50 clients en France
SELECT COUNT(*) FROM Client WHERE paysClient = 'France';
-- Clients répartis sur 35 départements
SELECT COUNT(UNIQUE departementClient) FROM Client;

-- -----------------------------------------------------------------------------
--       Tests sur les catégories ----------------- **PASSED**
-- -----------------------------------------------------------------------------

-- 35 categorie/sous categorie
SELECT COUNT(*) as NbrCommande FROM Categorie;
-- Nombre de sous categorie par categorie
SELECT C.nomCategorie, COUNT(C2.nomCategorie) as NbrSousCategorie
FROM Categorie C, Categorie C2 
WHERE C.idCategorie = C2.idCategoriePere
GROUP BY C.nomCategorie;

-- -----------------------------------------------------------------------------
--       Tests sur les commandes ----------------- **PASSED**
-- -----------------------------------------------------------------------------

-- 101 commande ont été faites
SELECT COUNT(*) FROM Commande;
-- Certains clients n'ont rien commandé
SELECT COUNT(*) FROM Client
WHERE idClient NOT IN (SELECT idClient FROM Commande);
--  Nombre de produits differents par commande
SELECT C.idCommande, COUNT(UNIQUE P.idProduit) as NbrProduitDiff
FROM Constituer C, Produit P
WHERE P.idProduit = C.idProduit
GROUP BY C.idCommande;
-- Produits qui sont commandé plusieurs fois dans une commande
SELECT *
FROM Constituer
WHERE qteCommandee>1;

-- -----------------------------------------------------------------------------
--       Tests sur les paiements ----------------- **PASSED**
-- -----------------------------------------------------------------------------

-- Le prix d'une commande peut être calculé
SELECT C.idCommande, SUM(D.prixProduit*C.qteCommandee) as PrixCommande
FROM Constituer C, DetailProduit D
WHERE C.idProduit = D.idProduit
GROUP BY C.idCommande;

-- Les références de carte bancaire peuvent être conservés
SELECT * FROM Paiement;