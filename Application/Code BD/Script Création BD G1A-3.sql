DROP TABLE DETAILPRODUIT CASCADE CONSTRAINTS;
DROP TABLE CLIENT CASCADE CONSTRAINTS;
DROP TABLE COMMANDE CASCADE CONSTRAINTS;
DROP TABLE PAIEMENT CASCADE CONSTRAINTS;
DROP TABLE PRODUIT CASCADE CONSTRAINTS;
DROP TABLE FORMULAIRE CASCADE CONSTRAINTS;
DROP TABLE CATEGORIE CASCADE CONSTRAINTS;
DROP TABLE CONSTITUER CASCADE CONSTRAINTS;
DROP TABLE STOCKER CASCADE CONSTRAINTS;
DROP TABLE ADRESSE CASCADE CONSTRAINTS;

-- -----------------------------------------------------------------------------
--       TABLE : DETAILPRODUIT
-- -----------------------------------------------------------------------------

CREATE TABLE DETAILPRODUIT
   (
    idDetailProduit NUMBER(8),
    idProduit NUMBER(8),
    colorisProduit VARCHAR(128),
    tailleProduit VARCHAR(128),
    matiereProduit VARCHAR(128),
    descriptionProduit VARCHAR(128),
    prixProduit NUMBER(8,2),
    CONSTRAINT pk_detailProduit PRIMARY KEY (idDetailProduit),
    CONSTRAINT ck_detailProduit_taille CHECK (tailleProduit IN ('S','M','L','XL','2XL', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50')),
    CONSTRAINT ck_detailProduit_matiere CHECK (matiereProduit IN ('Coton','Cuire','Laine')),
    CONSTRAINT ck_detailProduit_prix CHECK (prixProduit >=0)
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
    expiCarte DATE, 
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
--       TABLE : PRODUIT
-- -----------------------------------------------------------------------------

CREATE TABLE PRODUIT
   (
    idProduit NUMBER(8),
    idCategorie NUMBER(8),
    nomProduit VARCHAR(64),
    CONSTRAINT pk_produit PRIMARY KEY (idProduit)  
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : FORMULAIRE
-- -----------------------------------------------------------------------------

CREATE TABLE FORMULAIRE
   (
    idFormulaire NUMBER(8),
    idClient NUMBER(8),
    mailFormulaire VARCHAR(128),
    messageFormulaire VARCHAR(500),   
    CONSTRAINT pk_formulaire PRIMARY KEY (idFormulaire)  
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
    CONSTRAINT pk_Client PRIMARY KEY (idClient),
    CONSTRAINT uk_Client_mail UNIQUE (mailClient),
    CONSTRAINT ck_Client_pays CHECK (paysClient IN ('France','Angleterre','Espagne'))
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : CONSTITUER
-- -----------------------------------------------------------------------------

CREATE TABLE CONSTITUER
   (
    idCommande NUMBER(8),
    idProduit NUMBER(8),
    qteCommandee NUMBER(4),
    CONSTRAINT pk_constituer PRIMARY KEY (idCommande, idProduit),
    CONSTRAINT ck_constituer_qteCommandee CHECK (qteCommandee>=1)
   ) ;

-- -----------------------------------------------------------------------------
--       TABLE : STOCKER
-- -----------------------------------------------------------------------------

CREATE TABLE STOCKER
   (
    idProduit NUMBER(8),
    idDetailProduit NUMBER(8),
    qteStockee NUMBER(4),
    CONSTRAINT pk_stocker PRIMARY KEY (idProduit, idDetailProduit),
    CONSTRAINT ck_constituer_qteStockee CHECK (qteStockee>=0)
   ) ;
   
   
   -- -----------------------------------------------------------------------------
--       TABLE : ADRESSE
-- -----------------------------------------------------------------------------

CREATE TABLE ADRESSE
   (
    idClient NUMBER(8),
    idCommande NUMBER(8),
    adresseLivraison VARCHAR(100),
    CONSTRAINT pk_adresse PRIMARY KEY (idClient, idCommande)
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

ALTER TABLE STOCKER 
ADD CONSTRAINT fk_stocker_idProduit FOREIGN KEY (idProduit) REFERENCES PRODUIT (idProduit);

ALTER TABLE STOCKER 
ADD CONSTRAINT fk_stocker_idDetailProduit FOREIGN KEY (idDetailProduit) REFERENCES DETAILPRODUIT (idDetailProduit);

ALTER TABLE FORMULAIRE
ADD CONSTRAINT fk_formulaire_idClient FOREIGN KEY (idClient) REFERENCES Client (idClient);

ALTER TABLE ADRESSE
ADD CONSTRAINT fk_adresse_idClient FOREIGN KEY (idClient) REFERENCES Client (idClient);

ALTER TABLE ADRESSE
ADD CONSTRAINT fk_adresse_idCommande FOREIGN KEY (idCommande) REFERENCES COMMANDE (idCommande);

-- -----------------------------------------------------------------------------
--       CREATION DES SEQUENCES
-- -----------------------------------------------------------------------------

DROP SEQUENCE seq_categorie;
CREATE SEQUENCE seq_categorie
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_produit;
CREATE SEQUENCE seq_produit
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_Client;
CREATE SEQUENCE seq_Client
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_detailP;
CREATE SEQUENCE seq_detailP
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_paiement;
CREATE SEQUENCE seq_paiement
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_commande;
CREATE SEQUENCE seq_commande
START WITH 1
INCREMENT BY 1;

DROP SEQUENCE seq_formulaire;
CREATE SEQUENCE seq_formulaire
START WITH 1
INCREMENT BY 1;

-- -----------------------------------------------------------------------------
--       VALIDATION DE LA CREATION
-- -----------------------------------------------------------------------------

COMMIT;