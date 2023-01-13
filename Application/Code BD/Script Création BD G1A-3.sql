DROP TABLE DETAILPRODUIT CASCADE CONSTRAINTS;
DROP TABLE CLIENT CASCADE CONSTRAINTS;
DROP TABLE COMMANDE CASCADE CONSTRAINTS;
DROP TABLE PAIEMENT CASCADE CONSTRAINTS;
DROP TABLE PRODUIT CASCADE CONSTRAINTS;
DROP TABLE FORMULAIRE CASCADE CONSTRAINTS;
DROP TABLE CATEGORIE CASCADE CONSTRAINTS;
DROP TABLE CONSTITUER CASCADE CONSTRAINTS;
DROP TABLE CARACTERISTIQUES CASCADE CONSTRAINTS;
DROP TABLE ADRESSE CASCADE CONSTRAINTS;
DROP TABLE PANIER CASCADE CONSTRAINTS;
DROP TABLE LIVRAISON CASCADE CONSTRAINTS;

-- -- -----------------------------------------------------------------------------
-- --       FONCTION : GET_GENRE
-- -- -----------------------------------------------------------------------------

-- CREATE FUNCTION dbo.Get_genre(id_prod: int)
-- RETURNS VARCHAR(3)
-- AS BEGIN
--    RETURN (SELECT C.genreCategorie FROM CATEGORIE AS C, PRODUIT AS P WHERE C.idCategorie = P.idCategorie AND id_prod = P.idProduit)
-- END

-- -----------------------------------------------------------------------------
--       TABLE : PRODUIT
-- -----------------------------------------------------------------------------

CREATE TABLE PRODUIT
   (
    idProduit NUMBER(8),
    idCategorie NUMBER(8),
    nomProduit VARCHAR(64),
    CONSTRAINT pk_produit PRIMARY KEY (idProduit),
    CONSTRAINT ck_prod_cat CHECK (idCategorie>=6)  
   ) ;


-- -----------------------------------------------------------------------------
--       TABLE : CATEGORIE
-- -----------------------------------------------------------------------------

CREATE TABLE CATEGORIE
   (
    idCategorie NUMBER(8),
    idCategoriePere NUMBER(8),
    nomCategorie VARCHAR(128),
    genreCategorie VARCHAR(3),
    CONSTRAINT pk_categorie PRIMARY KEY (idCategorie),
    CONSTRAINT ck_categorie_genre CHECK (genreCategorie IN ('H','F','H/F'))
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : DETAILPRODUIT
-- -----------------------------------------------------------------------------

CREATE TABLE DETAILPRODUIT
   (
    idDetailProduit NUMBER(8),
    idProduit NUMBER(8),
    matiereProduit VARCHAR(128),
    descriptionProduit VARCHAR(128),
    genreProduit VARCHAR(3),
    prixProduit NUMBER(8,2),
    CONSTRAINT pk_detailProduit PRIMARY KEY (idDetailProduit),
    CONSTRAINT ck_detailProduit_matiere CHECK (matiereProduit IN ('Coton','Cuir','Elasthane et Coton','Elasthane', 'Nylon', 'Lyocell','Molleton','Argent','Caoutchouc','Polyamide','Tissu Stretch','Soie','Polyesther')),
    CONSTRAINT ck_detailProduit_genre CHECK (genreProduit IN ('H','F','H/F')),
    CONSTRAINT ck_detailProduit_prix CHECK (prixProduit >=0)
   ) ;

-- CREATE OR REPLACE VIEW v_CheckGenre
-- AS
-- SELECT C.genreCategorie AS genreCategorie, D.genreProduit AS genreProduit, D.idProduit AS idProduit
-- FROM CATEGORIE C, PRODUIT P, DetailProduit D 
-- WHERE C.idCategorie = P.idCategorie AND D.idProduit = P.idProduit AND C.genreCategorie NOT LIKE '%' || genreProduit || '%'
-- WITH CHECK OPTION;

CREATE OR REPLACE TRIGGER t_i_b_blabla 
AFTER INSERT OR UPDATE
ON DETAILPRODUIT
DECLARE
vIdProduit DETAILPRODUIT.idProduit%TYPE;
v_var int;
BEGIN
  SELECT COUNT(*) INTO v_var
      FROM CATEGORIE C, PRODUIT P, DetailProduit D 
      WHERE C.idCategorie = P.idCategorie AND D.idProduit = P.idProduit AND C.genreCategorie NOT LIKE '%' || genreProduit || '%';
   IF (v_var > 0)
   THEN
      DELETE FROM DetailProduit WHERE idProduit = vIdProduit;
      RAISE_APPLICATION_ERROR(-20000, 'Le genre du produit est incompatible avec le genre de la categorie');
   END IF;
END;
/

-- CREATE OR REPLACE TRIGGER t_iu_i_blablav2
-- INSTEAD OF DELETE
-- ON v_CheckGenre
-- BEGIN
--       RAISE_APPLICATION_ERROR(-20000, 'Le genre du produit est incompatible avec le genre de la categorie');
-- END;
-- /

-- -----------------------------------------------------------------------------
--       TABLE : PANIER
-- -----------------------------------------------------------------------------

CREATE TABLE PANIER
   (
    idPanier VARCHAR(32),
    idDetailProduit NUMBER(8),
    nomProduit VARCHAR(64),
    descriptionProduit VARCHAR(128),
    tailleProduit VARCHAR(128),
    colorisProduit VARCHAR(128), 
    prixProduit NUMBER(8,2),
    qtePanier NUMBER(5),
    CONSTRAINT ck_panier_qtePanier CHECK (qtePanier>=1)
   ) ;


-- -----------------------------------------------------------------------------
--       TABLE : PAIEMENT
-- -----------------------------------------------------------------------------

CREATE TABLE PAIEMENT
   (
    idPaiement NUMBER(8),
    numCarte NUMBER(16),
    nomCarte VARCHAR(64),
    cvvCarte NUMBER(3),
    expiCarte VARCHAR(5),
    idClient NUMBER(8),
    CONSTRAINT pk_paiement PRIMARY KEY (idPaiement),
    CONSTRAINT ck_numcarte CHECK (LENGTH(numCarte) = 16),
    CONSTRAINT ck_cvvCarte CHECK (LENGTH(cvvCarte) = 3) 
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : COMMANDE
-- -----------------------------------------------------------------------------

CREATE TABLE COMMANDE
   (
    idCommande NUMBER(8),
    idPaiement NUMBER(8),
    idClient NUMBER(8),
    dateCommande DATE,
    CONSTRAINT pk_commande PRIMARY KEY (idCommande)
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : FORMULAIRE
-- -----------------------------------------------------------------------------

CREATE TABLE FORMULAIRE
   (
    idFormulaire NUMBER(8),
    idClient NUMBER(8),
    mailFormulaire VARCHAR(128),
    titreFormulaire VARCHAR(128),
    messageFormulaire VARCHAR(500),
    CONSTRAINT pk_formulaire PRIMARY KEY (idFormulaire)
   ) ;


-- -----------------------------------------------------------------------------
--       TABLE : CLIENT
-- -----------------------------------------------------------------------------

CREATE TABLE CLIENT
   (
    idClient NUMBER(8),
    nomClient VARCHAR(64),
    prenomClient VARCHAR(64),
    pseudoClient VARCHAR(64),
    mailClient VARCHAR(64),
    dteNaissanceClient DATE,
    paysClient VARCHAR(32),
    departementClient NUMBER(3),
    passwordClient VARCHAR(64),
    roleClient VARCHAR(32),
    CONSTRAINT pk_Client PRIMARY KEY (idClient),
    CONSTRAINT uk_Client_mail UNIQUE (mailClient),
    CONSTRAINT uk_Client_pseudo UNIQUE (pseudoClient),
    CONSTRAINT ck_Client_pays CHECK (paysClient IN ('France','Belgique','Espagne')),
    CONSTRAINT ck_Client_role CHECK (roleClient IN ('Admin','Client'))
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CONSTITUER
-- -----------------------------------------------------------------------------

CREATE TABLE CONSTITUER
   (
    idCommande NUMBER(8),
    idProduit NUMBER(8),
    qteCommandee NUMBER(5),
    colorisProduit VARCHAR(128),
    tailleProduit VARCHAR(128),
    CONSTRAINT ck_constituer_qteCommandee CHECK (qteCommandee>=1)
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CARACTERISTIQUES
-- -----------------------------------------------------------------------------

CREATE TABLE CARACTERISTIQUES
   (
    idDetailProduit NUMBER(8),
    colorisProduit VARCHAR(128),
    tailleProduit VARCHAR(128),
    qteStockee NUMBER(5),
    CONSTRAINT ck_caracteristiques_taille CHECK (tailleProduit IN ('S','M','L','XL','2XL','TU','85-A','85-B','85-C','85-D','90-A','90-B','90-C','90-D','95-A','95-B','95-C','95-D', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50')),
    CONSTRAINT ck_caracteristiques_color CHECK (colorisProduit IN ('Noir','Vert','Rouge','Violet','Blanc', 'Bleu', 'Marine', 'Jaune', 'Orange', 'Rose', 'TartanMarine'))
   ) ;
   
   
-- -----------------------------------------------------------------------------
--       TABLE : LIVRAISON
-- -----------------------------------------------------------------------------

CREATE TABLE LIVRAISON
   (
    idClient NUMBER(8),
    idCommande NUMBER(8),
    adresseLivraison VARCHAR(100),
    CONSTRAINT pk_livraison PRIMARY KEY (idClient, idCommande)
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : ADRESSE
-- -----------------------------------------------------------------------------

CREATE TABLE ADRESSE
   (
    idClient NUMBER(8),
    adresseClient VARCHAR(100),
    CONSTRAINT fk_adresse_client FOREIGN KEY (idClient) REFERENCES CLIENT (idClient)
   ) ;


-- -----------------------------------------------------------------------------
--       CREATION DES REFERENCES DE TABLE
-- -----------------------------------------------------------------------------

ALTER TABLE DETAILPRODUIT
ADD CONSTRAINT fk_detailProduit_idProduit FOREIGN KEY (idProduit) REFERENCES PRODUIT (idProduit);

ALTER TABLE COMMANDE 
ADD CONSTRAINT fk_commande_idPaiement FOREIGN KEY (idPaiement) REFERENCES PAIEMENT (idPaiement);

ALTER TABLE COMMANDE 
ADD CONSTRAINT fk_commande_idClient FOREIGN KEY (idClient) REFERENCES Client (idClient);

ALTER TABLE PRODUIT
ADD CONSTRAINT fk_produit_idCategorie FOREIGN KEY (idCategorie) REFERENCES CATEGORIE (idCategorie);

ALTER TABLE CATEGORIE 
ADD CONSTRAINT fk_categorie_idCategoriePere FOREIGN KEY (idCategoriePere) REFERENCES CATEGORIE (idCategorie);

ALTER TABLE CONSTITUER 
ADD CONSTRAINT fk_constituer_idCommande FOREIGN KEY (idCommande) REFERENCES COMMANDE (idCommande);

ALTER TABLE CONSTITUER 
ADD CONSTRAINT fk_constituer_idProduit FOREIGN KEY (idProduit) REFERENCES PRODUIT (idProduit);

ALTER TABLE CARACTERISTIQUES 
ADD CONSTRAINT fk_carac_idDetailProduit FOREIGN KEY (idDetailProduit) REFERENCES DETAILPRODUIT (idDetailProduit);

ALTER TABLE FORMULAIRE
ADD CONSTRAINT fk_formulaire_idClient FOREIGN KEY (idClient) REFERENCES Client (idClient);

ALTER TABLE LIVRAISON
ADD CONSTRAINT fk_livraison_idClient FOREIGN KEY (idClient) REFERENCES Client (idClient);

ALTER TABLE LIVRAISON
ADD CONSTRAINT fk_livraison_idCommande FOREIGN KEY (idCommande) REFERENCES COMMANDE (idCommande);
-- -----------------------------------------------------------------------------
--       VALIDATION DE LA CREATION
-- -----------------------------------------------------------------------------

COMMIT;