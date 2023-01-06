-- -----------------------------------------------------------------------------
--       CREATION DES CATEGORIES
-- -----------------------------------------------------------------------------

DROP SEQUENCE seq_categorie;
CREATE SEQUENCE seq_categorie
START WITH 1
INCREMENT BY 1;

INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Sous-vetements', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Lingerie Nuit', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Vetements', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Chaussants', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Maillots de bain', 'H/F');

-- -----------------------------------------------------------------------------
--       CREATION DES SOUS-CATEGORIES
-- -----------------------------------------------------------------------------

INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Boxers', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Slips', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Calecons', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Lots', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Sous-vetements de sport', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Soutiens-gorge', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Culottes', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Ensemble de lingerie', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Bodys', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Pyjamas long', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Pyjamas short', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Pyjamas', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Nuisettes', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Chemise de Nuits', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Peignoirs', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'T-Shirts et polos', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'T-Shirts et chemisiers', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Joggings, pantalons et shorts', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Pulls', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Sweats - Shirts', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Pantalons', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Shorts et bermudas', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Chemises', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Accessoires', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Joggings', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Chaussons', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Baskets', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Chaussettes', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Mules/Tongs', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Collants', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Lots de Chaussettes', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Shorts de bain', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Boxers de bain', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Maillots une piece', 'F');

-- -----------------------------------------------------------------------------
--       CREATION DES PRODUITS
-- -----------------------------------------------------------------------------

DROP SEQUENCE seq_produit;
CREATE SEQUENCE seq_produit
START WITH 1
INCREMENT BY 1;

INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Boxer Marius Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Boxer Freefun Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Boxer Freeks Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Boxer Tim Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Boxer J.J Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 7, 'Slip Rayé Martin Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 8, 'Calecon Terroir Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 9, 'Lot 3 slips Pépé Beans Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 9, 'Lot 3 caleçons ElDiablo Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 9, 'Lot 3 boxers BeauGosse Homme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 10, 'Boxer de sport respirant SpeedLight Homme');


---- Femme -----

----- Sous vêtements ------
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 11, 'Soutien Gorge Elégance Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 12, 'Culotte Unie Mégabelle Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 13, 'Ensemble de lingerie beauté Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 14, 'Body Soirée fête Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 9, 'Lot de culotte Papillons Femme');

---- Lingerie de nuit ----
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 17, 'Pyjama Bella Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 18, 'Nuisette Charme Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 19, 'Chemise de Nuit BonSommeil Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 20, 'Peignoir DouceurDuMatin Femme');

---- Vêtements ----
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 22, 'T-shirt Envol Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 22, 'Chemisier Fleur Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 23, 'Jogging EnModeRelax Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 23, 'Jean GlaClasse Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 23, 'Short YfaitCho Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 24, 'Pull Skieuse Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 25, 'Sweat-shirts Ride Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 29, 'Bracelet ArbreDeVie Femme');

---- Chaussants ----
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 31, 'Chausson Confortissime Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 32, 'Basket VitesseEclair Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 33, 'Chaussette Deesse Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 34, 'Mule Design Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 34, 'Tong JolisPieds Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 35, 'Collants Afleurdepeau Femme');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 36, 'Lot de chaussettes TrioGagnant Femme');

----- Maillot -----
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 39, 'Maillot une pièce JeMeBaigne Femme');


INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 15, 'Pyjama long Cool-Doo Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 16, 'Pyjama short Harry-Glober Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 20, 'Peignoir Daniel Techter Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 21, 'T-Shirt Liberté Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 21, 'Polo T-Class Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 24, 'Pull Trappeur Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 25, 'Sweat-shirts Umbra Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 26, 'Jean JeBosseDur Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 27, 'Short Hivabien Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 27, 'Bermuda Ladalle Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 28, 'Chemise Topissim Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 29, 'Cravate Enmodebuisnessman Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 30, 'Joggings Santé-Sport Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 31, 'Chaussons Issoncho Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 32, 'Baskets DuTonnerre Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 33, 'Chaussettes Tendresse Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 34, 'Mule DeVieu Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 34, 'Tong Vacances Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 36, 'Lot de Chaussettes BienEquipé Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 37, 'Short de bain PlageDorée Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 37, 'Short de bain CielBleu Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 38, 'Boxer de bain SableFin Homme');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL, 38, 'Boxer de bain Soleil Homme');

DROP SEQUENCE seq_Client;
CREATE SEQUENCE seq_Client
START WITH 1
INCREMENT BY 1;

INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL, 'Pendaries', 'Esther', 'MSI', 'esther.pendaries@etu.univ-tlse2.fr', '14/12/2022', 'France', 31, '1234', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Patterson','Chastity','a','euismod.et@hotmail.edu','26/10/2019','France',33,'NST62RZC4EW', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Mcmillan','Neville','molestie','lobortis.ultrices@outlook.org','09/04/2015','France',18,'LRN71UVT8KU', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Frye','Penelope','dignissim','molestie.pharetra@yahoo.net','18/12/2013','France',30,'UYC48MHB1VN', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Battle','James','ipsum','imperdiet.ullamcorper@outlook.org','23/03/2013','France',9,'UFW31QUG7BZ', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Johnson','Kathleen','libero.','urna@protonmail.edu','15/10/2022','France',26,'JAT27SEP7EN', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Barnes','Noelle','Etiam','vivamus.euismod@outlook.couk','19/02/2007','France',28,'YQE58NGM1HX', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Sheppard','Aidan','vel','magna.cras.convallis@yahoo.ca','08/10/2009','France',1,'MSZ59QHX0DI', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Chase','Rhiannon','dui.','mauris@outlook.ca','21/08/2003','France',27,'MYW72VVR1GG', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Harris','Charles','Suspendisse','lacus.quisque@yahoo.com','24/09/1996','France',57,'UOH40FTT5LW', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Holder','Sharon','natoque','sed.nec@google.edu','04/09/2014','France',73,'NWW67ZPG5EN', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Fernandez','Phyllis','Nulla','cursus.vestibulum.mauris@aol.edu','26/04/1995','France',60,'HMH70DHH4NP', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Bender','Alyssa','iaculis','arcu.vivamus.sit@icloud.org','17/06/2000','France',95,'ASY23LWJ1XS', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Kemp','Axel','mi','vulputate.lacus@outlook.edu','10/05/2022','France',14,'PNM91PWW9HP', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Martin','Jillian','non,','dapibus.quam@yahoo.couk','08/09/2001','France',85,'XYN28VGE3PW', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Cardenas','Nita','nec','euismod.mauris@google.ca','01/09/2006','France',35,'GJD87RQF6VC', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Barnes','Ori','eleifend','suscipit.nonummy@aol.net','11/07/2003','France',35,'XZN76WMO4UC', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Hamilton','Porter','porttitor','enim.consequat.purus@outlook.ca','31/08/1996','France',33,'OOL98JYR6UG', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Higgins','Alvin','purus','iaculis.enim@yahoo.net','23/06/2013','France',3,'WVA78UCV5JB', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Burks','Darius','Quisque','massa@protonmail.org','08/07/1997','France',73,'HUY32YSL6HS', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Coffey','Debra','eget','in.nec.orci@hotmail.couk','06/11/2001','France',45,'MJK35PUD1QR', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Butler','Trevor','arcu','lobortis.tellus@yahoo.ca','29/07/2014','France',88,'KRD02QTT1LF', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Hancock','Chancellor','Sed','pede.et.risus@hotmail.com','21/09/2005','France',1,'PVR74JDL0EK', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Hampton','Katell','Morbi','aliquet.metus.urna@yahoo.com','27/08/1995','France',6,'RZS95UUI2DP', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Phillips','Coby','quis','non.ante@protonmail.edu','29/04/2011','France',7,'MEO36YKH0OH', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'William','Ria','sumi','rutrum@icloud.couk','11/12/2010','France',57,'BNT49NDV1HO', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Hester','Venus','roger','class.aptent@icloud.ca','28/07/2004','France',32,'GMO38XEH1LI', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Payne','Lucas','egestas','pharetra.felis.eget@aol.net','25/10/1995','France',60,'FRS79RXR5YH', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Pitts','Giselle','nisl','tempus.eu@yahoo.couk','30/01/2019','France',28,'ZXM67IJF7OF', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Mcmahon','Aimee','rena','lectus.nullam@google.org','23/02/2011','France',69,'ARD68DOU2CM', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Clark','Emery','ac','sed.eu@yahoo.ca','02/01/2017','France',86,'VFV57LIN8EH', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Campbell','Abraham','aliquam,','senectus.et.netus@outlook.edu','16/01/2016','France',91,'BYR42BOU7DH', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Moses','Zephr','dis','porttitor.scelerisque.neque@icloud.edu','30/10/2015','France',12,'UUY64JRZ3IM', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Chavez','Stephen','consectetuer,','diam@protonmail.edu','01/11/1999','France',48,'TIK22PVT2CX', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Best','Nerea','Donec','class@hotmail.couk','01/03/2007','France',33,'YCG76GIY4DB', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Reyes','Iris','nisl.','urna.nec@outlook.net','01/09/2002','France',2,'PIB82KMN7LB', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Thornton','Kay','nunc,','sit.amet.ultricies@aol.edu','10/01/2009','France',7,'NNB46EOU7PD', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Strickland','Hakeem','Integer','facilisis.magna@protonmail.couk','19/03/2018','France',68,'NCI78UXP3PN', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Stephens','Brianna','diam','in@yahoo.ca','21/04/2004','France',92,'PAH73VHC8QI', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Sparks','Simone','semper','elementum.sem.vitae@icloud.edu','25/07/2001','France',92,'BNA47AXW4YJ', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Morin','Mohammad','lees','nullam@google.org','29/09/2004','France',34,'BMZ72QEH9VV', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Pacheco','Jaime','Mauris','mauris@protonmail.com','17/11/2004','France',44,'USS31JRT7XR', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Rush','Davis','neque.','tellus@hotmail.net','03/03/2001','France',33,'VSR39SIY8DM', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Bass','Beau','ofil','sed.nunc@hotmail.com','10/06/2012','France',78,'GLD68UIS4JA', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Matthews','Mari','eu','fusce@outlook.net','11/05/2013','France',6,'UWB06CTF1PA', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Sullivan','Abraham','inceptos','ligula.elit@hotmail.net','10/04/2011','France',6,'ZPL29PVI1EK', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Alexander','Jerome','nibh','feugiat.tellus@icloud.couk','28/02/2021','France',54,'SYU78KQV5VX', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Collins','Murphy','risus.','lorem.ut.aliquam@yahoo.net','18/07/2010','France',35,'EOW69SSS8BW', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Vaughan','Zelda','metus.','et.lacinia.vitae@yahoo.com','31/10/1995','France',45,'IQP42XIG9UP', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'Garrett','Chiquita','hokkai','lobortis.quis@google.org','15/09/2018','France',24,'LXW61FGC3GC', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'ClientTest','client','ctest','clientTest@gmail.com','28/12/2022','France',32,'jzZmL60OoFbEm5XwE8DVQeoF9PkzIXyNTXoyRpEcZP4o0cjn2j6', 'Client');
INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient, roleClient)
VALUES (seq_Client.NEXTVAL,'AdminTest','admin','atest','adminTest@gmail.com','28/12/2022','France',32,'$2y$10$uuOHtFUaWRYa2hSrwyEALuNDIDRWNY5vPBZOrGUARxNfbxTAdJ0w6', 'Admin');

DROP SEQUENCE seq_detailP;
CREATE SEQUENCE seq_detailP
START WITH 1
INCREMENT BY 1;

INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 1, 'Elasthane', 'Boxers sans coutures côté.', 'H', 39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 2, 'Coton', 'Boxers sans coutures côté.', 'H', 39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 3, 'Coton', 'Boxers sans coutures côté.', 'H', 34.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 4, 'Coton', 'Boxers sans coutures côté.', 'H', 149.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 5, 'Coton', 'Boxers sans coutures côté.', 'H', 59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 6, 'Coton', 'Slip rayé', 'H', 65.42);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,7,'Coton','Caleçon en flanelle grattée','H',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,8,'Coton','Ce coffret est composé de trois slips Pépé Beans','H',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,9,'Coton','Ce coffret est composé de trois caleçons ElDiablo','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,10,'Coton','Ce coffret est composé de trois boxers BeauGosse','H',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,11,'Coton','Boxer de sport respirant SpeedLight.','H',39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,12,'Elasthane','Soutien gorge à bretelles extensibles et réglables','F',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,13,'Coton','Culotte unie qui vous rend plus belle.','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,14,'Elasthane et Coton','Coffret contenant deux pièces avec soutien-gorge et culotte.','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,15,'Nylon','Body pour une soirée pyjama réussie !','F',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,16,'Coton','Lot de culottes ravissantes ','F',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,17,'Coton','Pyjama avec col revers','F',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,18,'Polyesther','Nuisette en fine résille rose semi transparente et dentelle florale','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,19,'Lyocell','Chemise de nuit avec col de colline','F',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,20,'Coton','Peignoir pour femme, parfait pour se détendre à la maison dans le plus grand comfort.','F',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,21,'Coton','Tee-shirt manches longues femme. Jolie encolure arrondie. ','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,22,'Coton','Chemise aux motifs de fleurs.','F',39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,23,'Polyesther','Pantalon de jogging confortable coupe ample noir.','F',39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,24,'Coton','Jean polyvalent et confortable avec un ajustement parfait et une durabilité exceptionnelle.','F',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,25,'Coton','Short large et fin avec une dégaine moderne.','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,26,'Coton','Pull chaud à col rond, parfait en hiver !.','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,27,'Molleton','Sweat-shirts à manche raglan floqué [Ride Everywhere] ','F',39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,28,'Argent','Bracelet brillant en argent massif élégant.','F',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,29,'Coton','Chaussons doux et comfortables en coton.','F',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,30,'Caoutchouc','Baskets performantes, confortables et tendance.','F',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,31,'Coton','Chaussettes ravissantes en coton coloris unis','F',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,32,'Cuir','Mules élégantes et confortable en cuir pour un usage quotidien.','F',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,33,'Caoutchouc','Tongs ouvertes et ravissantes.','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,34,'Polyamide','Collant semi-opaque noir uni qui vous ira à ravir !','F',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,35,'Coton','Lot de chaussettes TrioGagnant aux couleurs unis','F',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,36,'Tissu Stretch','Maillot de bain une pièce à la fois élégant et confortable.','F',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,37,'Coton','Pyjama long chaud et doux qui vous tiendra au chaud toute la nuit.','H',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,38,'Coton','Pyjama short doux et respirant qui vous tiendra au frais toute la nuit.','H',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,39,'Coton','Peignoir parfait pour se détendre à la maison. ','H',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,40,'Coton','T-shirts confortable et large pour se sentir libre dans ses mouvements.','H',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,41,'Coton','Polos tendances et élégants pour un usage quotidien.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,42,'Coton','Pulls chauds et confortables, parfait pour rester au chaud.','H',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,43,'Coton','Sweatshirts légers et confortable, parfait pour la fraicheur du printemps.','H',49.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,44,'Coton','Jeans unis pour un usage quotidien.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,45,'Coton','Shorts adaptables, légers et confortables.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,46,'Coton','Bermudas larges et légers extensibles si vous mangez un repas copieu !.','H',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,47,'Coton','Chemises élégantes et classes parfaites pour toutes les occasions.','H',29.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,48,'Soie','Cravate adoptant un design élégant et classique.','H',59.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,49,'Coton','Joggings comfortable et polyvalent adaptatif à chaque morphologie','H',39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,50,'Coton','Chaussons doux et chaud pour un hiver comfortable','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,51,'Caoutchouc','Baskets énergétiques et aérodynamiques.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,52,'Coton','Chaussettes chaudes et agréables .','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,53,'Coton','Mule en coton colonris unis','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,54,'Caoutchouc','Tong respirante et antidérapante','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,55,'Coton','Lot de haute chaussettes chaude en coton','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,56,'Polyamide','Short de bain éblouissant ajustable par un cordon.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,57,'Polyamide','Short de bain uni ajustable par un cordon.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,58,'Polyamide','Boxer de bain pointillé ajustable par un cordon.','H',79.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, matiereProduit, descriptionProduit, genreProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL,59,'Polyamide','Boxer de bain rayonnant ajustable par un cordon.','H',79.99);


-- SELECT * FROM DETAILPRODUIT;
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Noir','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Blanc','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Blanc','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Blanc','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Blanc','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Bleu','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Bleu','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Bleu','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Bleu','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('1','Bleu','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Noir','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Noir','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Blanc','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Blanc','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Blanc','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Vert','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Vert','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Vert','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Vert','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('2','Vert','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Noir','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Noir','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Noir','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Noir','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Blanc','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Blanc','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Blanc','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Blanc','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Violet','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Violet','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Violet','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Violet','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('3','Violet','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Noir','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Noir','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Noir','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Noir','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Blanc','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Blanc','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Blanc','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Jaune','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Jaune','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Jaune','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Jaune','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('4','Jaune','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Noir','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Noir','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Orange','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Orange','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Orange','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Orange','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('5','Orange','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Noir','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Noir','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Noir','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Noir','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Noir','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Blanc','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Blanc','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Blanc','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Rose','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Rose','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Rose','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Rose','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('6','Rose','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Noir','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Noir','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Blanc','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Blanc','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Blanc','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Rouge','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Rouge','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Rouge','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Rouge','XL','7');
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('7','Rouge','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Noir','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Noir','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Noir','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Blanc','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Blanc','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Blanc','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Bleu','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Bleu','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Bleu','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Bleu','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('8','Bleu','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Noir','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Noir','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Noir','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Noir','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Marine','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Marine','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Marine','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Marine','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('9','Marine','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Noir','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Noir','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Blanc','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Blanc','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Blanc','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Bleu','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Bleu','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Bleu','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Bleu','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('10','Bleu','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Noir','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Noir','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Noir','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Blanc','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Blanc','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Blanc','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Blanc','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Vert','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Vert','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Vert','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Vert','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('11','Vert','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','85-A','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','85-B','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','85-C','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','85-D','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','90-A','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','90-B','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','90-C','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','90-D','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','95-A','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','95-B','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','95-C','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Noir','95-D','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','85-A','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','85-B','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','85-C','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','85-D','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','90-A','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','90-B','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','90-C','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','90-D','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','95-A','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','95-B','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','95-C','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Blanc','95-D','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','85-A','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','85-B','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','85-C','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','85-D','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','90-A','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','90-B','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','90-C','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','90-D','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','95-A','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','95-B','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','95-C','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('12','Violet','95-D','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Noir','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Blanc','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Blanc','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Blanc','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Blanc','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Jaune','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Jaune','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Jaune','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Jaune','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('13','Jaune','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Noir','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Noir','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Noir','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Blanc','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Blanc','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Blanc','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Blanc','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Orange','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Orange','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Orange','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Orange','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('14','Orange','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Noir','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Noir','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Blanc','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Rose','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Rose','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Rose','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Rose','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('15','Rose','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Noir','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Noir','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Noir','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Blanc','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Rouge','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Rouge','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Rouge','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Rouge','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('16','Rouge','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Noir','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Noir','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Noir','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Blanc','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Blanc','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Blanc','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Bleu','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Bleu','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Bleu','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Bleu','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('17','Bleu','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Noir','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Noir','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Blanc','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Blanc','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Blanc','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Blanc','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Blanc','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Marine','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Marine','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Marine','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Marine','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('18','Marine','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Noir','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Noir','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Noir','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Noir','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Blanc','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Blanc','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Bleu','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Bleu','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Bleu','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Bleu','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('19','Bleu','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Noir','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Noir','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Blanc','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Blanc','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Vert','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Vert','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Vert','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Vert','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('20','Vert','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Noir','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Noir','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Blanc','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Blanc','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Blanc','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Blanc','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Blanc','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Violet','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Violet','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Violet','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Violet','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('21','Violet','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Noir','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Noir','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Blanc','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Blanc','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Blanc','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Jaune','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Jaune','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Jaune','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Jaune','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('22','Jaune','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Noir','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Noir','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Noir','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Blanc','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Blanc','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Orange','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Orange','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Orange','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Orange','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('23','Orange','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Noir','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Noir','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Noir','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Noir','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Noir','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Blanc','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Blanc','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Rose','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Rose','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Rose','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Rose','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('24','Rose','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Noir','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Noir','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Noir','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Blanc','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Blanc','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Blanc','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Blanc','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Rouge','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Rouge','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Rouge','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Rouge','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('25','Rouge','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Noir','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Noir','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Noir','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Noir','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Noir','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Blanc','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Bleu','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Bleu','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Bleu','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Bleu','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('26','Bleu','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Noir','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Noir','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Blanc','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Blanc','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Marine','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Marine','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Marine','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Marine','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('27','Marine','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('28','Noir','TU','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('28','Blanc','TU','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('28','Bleu','TU','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','40','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','41','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','42','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','44','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','45','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','48','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','49','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Noir','50','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','40','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','41','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','42','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','44','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','47','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','48','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','49','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Blanc','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','40','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','41','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','43','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','47','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','49','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('29','Vert','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','40','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','41','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','42','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','43','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','44','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','46','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','47','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','48','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','49','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Noir','50','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','40','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','41','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','42','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','43','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','44','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','47','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','48','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Blanc','50','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','41','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','42','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','48','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('30','Violet','50','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','40','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','44','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','47','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','48','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','49','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Noir','50','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','41','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','42','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','43','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','45','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','48','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Blanc','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','42','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','43','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','44','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','46','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','47','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','48','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','49','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('31','Jaune','50','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','40','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','42','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','43','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','44','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','45','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','46','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','48','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Noir','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','40','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','42','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','43','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','45','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','46','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','47','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','48','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Blanc','50','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','40','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','43','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','44','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','47','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','48','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('32','Orange','50','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','40','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','41','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','42','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','44','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','47','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','48','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Noir','50','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','40','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','41','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','42','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','43','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','44','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','45','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','46','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Blanc','50','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','41','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','42','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','44','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','45','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','46','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','47','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','48','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('33','Rose','50','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','40','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','41','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','42','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','43','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','44','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','49','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Noir','50','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','40','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','41','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','42','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','43','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','44','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','46','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','47','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','48','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Blanc','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','40','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','42','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','43','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','44','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','46','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','47','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','48','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','49','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('34','Rouge','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','42','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','43','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','44','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','45','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','46','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','48','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Noir','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','41','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','42','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','43','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','44','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','46','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','47','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Blanc','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','40','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','42','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','43','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','45','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','47','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','48','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('35','Bleu','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Noir','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Noir','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Blanc','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Blanc','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Blanc','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Blanc','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Marine','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Marine','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Marine','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Marine','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('36','Marine','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Noir','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Noir','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Blanc','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Blanc','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Blanc','L','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Blanc','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Bleu','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Bleu','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Bleu','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Bleu','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('37','Bleu','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Noir','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Noir','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Blanc','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Blanc','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Blanc','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Vert','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Vert','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Vert','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Vert','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('38','Vert','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Noir','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Noir','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Blanc','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Blanc','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Blanc','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Blanc','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Blanc','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Violet','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Violet','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Violet','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Violet','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('39','Violet','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Noir','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Noir','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Blanc','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Jaune','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Jaune','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Jaune','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Jaune','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('40','Jaune','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Noir','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Noir','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Noir','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Noir','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Blanc','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Blanc','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Blanc','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Orange','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Orange','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Orange','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Orange','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('41','Orange','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Noir','S','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Noir','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Blanc','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Blanc','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Rose','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Rose','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Rose','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Rose','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('42','Rose','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Noir','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Noir','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Noir','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Blanc','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Rouge','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Rouge','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Rouge','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Rouge','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('43','Rouge','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Noir','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Noir','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Noir','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Noir','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Blanc','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Blanc','L','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Blanc','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Bleu','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Bleu','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Bleu','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Bleu','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('44','Bleu','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Noir','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Noir','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Noir','2XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Blanc','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Blanc','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Blanc','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Marine','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Marine','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Marine','L','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Marine','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('45','Marine','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Noir','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Noir','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Noir','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Noir','XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Blanc','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Blanc','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Blanc','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Blanc','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Bleu','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Bleu','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Bleu','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Bleu','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('46','Bleu','2XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Noir','S','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Noir','L','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Noir','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Blanc','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Blanc','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Blanc','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Vert','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Vert','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Vert','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Vert','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('47','Vert','2XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('48','Noir','TU','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('48','Blanc','TU','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('48','Violet','TU','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Noir','S','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Noir','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Noir','XL','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Blanc','M','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Blanc','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Jaune','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Jaune','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Jaune','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Jaune','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('49','Jaune','2XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','40','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','41','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','43','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','44','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','48','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Noir','50','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','40','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','41','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','43','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','44','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','46','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','48','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Blanc','50','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','40','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','41','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','42','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','43','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','46','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','48','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('50','Orange','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','40','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','41','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','42','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','43','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','44','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','46','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','47','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','48','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Noir','50','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','41','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','42','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','44','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','47','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Blanc','50','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','42','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','43','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','44','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','46','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','47','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','48','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','49','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('51','Rose','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','40','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','41','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','42','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','44','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','48','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','49','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Noir','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','40','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','44','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','48','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Blanc','50','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','40','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','41','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','42','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','43','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','44','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','45','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','46','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','47','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','48','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','49','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('52','Rouge','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','40','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','41','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','42','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','43','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','44','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','45','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','46','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','47','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Noir','50','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','40','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','41','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','42','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','44','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','45','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','46','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','47','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','48','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','49','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Blanc','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','41','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','42','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','43','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','44','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','45','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','46','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','47','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','48','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','49','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('53','Bleu','50','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','41','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','42','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','44','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','45','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','46','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','47','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','49','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Noir','50','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','41','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','42','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','44','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','46','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','47','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','48','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','49','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Blanc','50','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','40','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','42','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','44','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','46','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','47','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','48','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','49','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('54','Marine','50','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','40','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','42','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','43','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','44','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','45','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','48','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Noir','50','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','40','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','41','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','42','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','43','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','44','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','45','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','46','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','47','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','48','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Blanc','50','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','40','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','41','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','42','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','43','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','44','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','45','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','46','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','47','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','48','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','49','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('55','Bleu','50','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Noir','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Noir','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Noir','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Blanc','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Blanc','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Blanc','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Blanc','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Vert','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Vert','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Vert','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Vert','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('56','Vert','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Noir','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Noir','M','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Noir','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Noir','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Blanc','S','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Blanc','M','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Blanc','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Blanc','XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Blanc','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Violet','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Violet','M','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Violet','L','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Violet','XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('57','Violet','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Noir','S','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Noir','M','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Noir','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Noir','XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Noir','2XL','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Blanc','M','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Blanc','XL','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Blanc','2XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Jaune','S','1'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Jaune','M','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Jaune','L','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Jaune','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('58','Jaune','2XL','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Noir','S','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Noir','M','9'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Noir','L','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Noir','XL','4'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Noir','2XL','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Blanc','S','5'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Blanc','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Blanc','L','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Blanc','XL','7'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Blanc','2XL','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Orange','S','2'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Orange','M','6'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Orange','L','3'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Orange','XL','8'); 
INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) 
VALUES ('59','Orange','2XL','4'); 


-- SELECT * FROM CARACTERISTIQUES;

DROP SEQUENCE seq_paiement;
CREATE SEQUENCE seq_paiement
START WITH 1
INCREMENT BY 1;

INSERT INTO PAIEMENT (idPaiement,numCarte, nomCarte, cvvCarte, expiCarte)
VALUES (seq_paiement.NEXTVAL,7458214598752146, 'esther', 547, '21/10/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,8538238390855351,'Zachery','283','26/09/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2548848984003102,'Gary','491','07/07/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2562188746413706,'Petra','389','16/10/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,9598299486200296,'Odysseus','384','31/07/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1142033408612909,'Jerome','935','05/12/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,7173500101072796,'Peter','655','22/03/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3468824664755513,'Galvin','875','23/12/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5329340562362678,'Timon','841','05/09/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,4792922921006327,'Vaughan','144','02/07/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1513714407925439,'Kelly','687','15/09/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1614759557058509,'Louis','858','18/01/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2816947358340052,'Emerson','947','12/09/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3081415397328043,'Tatum','350','19/02/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2753809728817730,'Ryan','322','27/12/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3797326056959529,'Paul','643','28/08/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5385686931142295,'Simon','540','18/10/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,8404236792380182,'Yvonne','599','21/10/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2281010513310363,'Deborah','265','06/07/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5384751331801008,'Deacon','702','11/03/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,7177013217159766,'Shea','310','10/07/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,4629706949523753,'Neil','598','31/01/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,8822479119620612,'Yoshio','973','30/04/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6610724268103379,'Matthew','800','12/09/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,9339683793139456,'Sybil','454','26/04/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,4196576888472797,'Zia','807','23/08/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5255578204475345,'Reuben','430','10/11/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,2824683816893547,'Hiram','699','25/05/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,7950091928739404,'Quynn','295','31/03/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,9389669420539416,'Cheryl','879','02/04/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3681657905848158,'Lyle','991','26/10/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,9510299086710548,'Demetria','882','04/04/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6389892370417227,'Rooney','997','25/08/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3204394249137647,'Fitzgerald','983','23/06/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5822748999576642,'Marny','382','29/05/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1813835110087355,'Zeph','273','27/06/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,3165350526252782,'Shay','485','17/09/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1777180722585053,'Driscoll','629','21/03/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,4361315645016814,'Abraham','435','14/02/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5266530975929417,'Eagan','163','20/03/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,7504593714300658,'Clinton','298','13/04/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,1698916881417810,'Harlan','415','10/10/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6732281452265815,'Quintessa','261','31/07/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,4500793833104475,'Natalie','278','22/04/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,5082833721146954,'Zachary','215','12/04/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,8051658678945596,'Gage','672','14/08/2025');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,7515115975774231,'Micah','877','07/04/2027');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6268519873146395,'Kuame','138','15/09/2026');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6767719234908550,'Odette','121','27/11/2024');
INSERT INTO PAIEMENT (idPaiement,numCarte,nomCarte,cvvCarte,expiCarte)
VALUES (seq_paiement.NEXTVAL,6004232180260534,'Adrienne','990','18/07/2025');



DROP SEQUENCE seq_commande;
CREATE SEQUENCE seq_commande
START WITH 1
INCREMENT BY 1;

INSERT INTO COMMANDE (idCommande, idPaiement , idClient, dateCommande)
VALUES (seq_commande.NEXTVAL, 1, 1, '21/10/2027');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,45,26,'15/10/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,20,28,'05/11/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,34,40,'06/11/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,50,18,'22/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,21,25,'27/12/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,9,48,'21/06/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,19,29,'29/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,8,30,'25/05/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,13,44,'14/08/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,18,41,'05/01/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,41,49,'05/04/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,27,45,'15/09/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,5,12,'23/01/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,24,41,'31/03/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,7,7,'30/10/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,24,18,'17/04/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,3,18,'12/06/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,5,44,'27/06/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,49,2,'29/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,39,41,'28/04/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,4,24,'13/06/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,10,20,'10/07/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,31,29,'20/08/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,3,46,'21/08/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,4,28,'10/02/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,7,14,'04/04/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,9,39,'20/04/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,5,48,'29/05/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,31,4,'08/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,11,16,'06/04/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,17,31,'19/01/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,22,19,'30/11/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,44,31,'21/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,47,39,'05/04/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,46,37,'13/11/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,30,17,'13/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,19,44,'13/08/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,14,22,'03/07/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,33,48,'17/05/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,45,22,'23/10/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,35,22,'22/03/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,37,26,'22/07/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,50,43,'30/09/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,45,46,'10/09/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,2,11,'22/01/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,20,30,'01/03/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,7,7,'14/12/2017');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,41,12,'26/11/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,44,11,'08/10/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,1,43,'27/11/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,2,20,'27/12/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,3,47,'24/05/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,4,8,'06/05/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,5,41,'21/02/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,6,49,'18/09/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,7,32,'03/01/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,8,36,'18/03/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,9,41,'15/10/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,10,37,'20/02/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,11,31,'25/11/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,12,22,'27/12/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,13,17,'18/05/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,14,2,'10/10/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,15,13,'02/07/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,16,32,'24/01/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,17,11,'27/09/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,18,34,'09/01/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,19,8,'16/11/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,20,38,'03/02/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,21,27,'09/10/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,22,3,'07/04/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,23,40,'23/12/2017');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,24,42,'23/04/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,25,30,'30/09/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,26,37,'11/02/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,27,43,'08/09/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,28,13,'13/05/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,29,21,'09/04/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,30,15,'04/03/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,31,7,'04/10/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,32,44,'21/07/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,33,20,'12/04/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,34,42,'28/01/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,35,49,'01/08/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,36,24,'23/12/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,37,37,'11/01/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,38,7,'31/12/2017');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,39,25,'13/02/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,40,9,'21/01/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,41,18,'08/05/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,42,38,'25/02/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,43,19,'07/08/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,44,40,'11/04/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,45,29,'28/10/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,46,6,'14/06/2020');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,47,20,'28/01/2022');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,48,24,'25/08/2021');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,49,47,'14/04/2019');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,50,10,'23/12/2018');
INSERT INTO COMMANDE (idCommande,idPaiement,idClient,dateCommande)
VALUES (seq_commande.NEXTVAL,48,2,'15/05/2019');


-- SELECT * FROM PAIEMENT;
-- SELECT * FROM COMMANDE;

INSERT INTO CONSTITUER (idCommande, idProduit, qteCommandee)
VALUES (1, 24, 5);
INSERT INTO CONSTITUER (idCommande, idProduit, qteCommandee)
VALUES (1, 27, 1);
INSERT INTO CONSTITUER (idCommande, idProduit, qteCommandee)
VALUES (1, 2, 1);
INSERT INTO CONSTITUER (idCommande, idProduit, qteCommandee)
VALUES (1, 4, 2);
INSERT INTO CONSTITUER (idCommande, idProduit, qteCommandee)
VALUES (1, 14, 1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (2,42,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (2,33,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (2,7,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (2,44,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (2,30,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (3,12,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (3,34,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (3,8,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (3,41,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (3,29,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (4,38,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (4,44,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (4,12,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (4,28,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (4,30,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (5,10,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (5,8,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (5,30,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (5,23,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (5,13,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (6,40,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (6,16,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (6,10,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (6,1,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (6,39,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (7,48,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (7,19,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (7,22,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (7,18,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (7,8,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (8,35,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (8,38,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (8,21,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (8,25,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (8,6,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (9,3,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (9,26,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (9,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (9,33,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (9,18,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (10,20,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (10,16,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (10,28,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (10,2,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (10,1,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (11,43,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (11,4,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (11,33,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (11,32,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (11,26,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (12,20,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (12,46,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (12,23,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (12,17,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (12,25,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (13,25,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (13,34,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (13,17,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (13,31,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (13,28,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (14,15,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (14,50,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (14,32,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (14,47,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (14,41,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (15,27,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (15,18,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (15,22,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (15,42,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (15,2,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (16,19,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (16,47,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (16,44,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (16,14,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (16,34,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (17,13,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (17,36,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (17,9,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (17,19,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (17,28,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (18,41,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (18,36,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (18,31,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (18,21,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (18,35,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (19,22,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (19,2,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (19,5,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (19,46,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (19,47,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (20,48,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (20,43,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (20,24,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (20,47,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (20,46,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (21,6,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (21,25,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (21,9,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (21,12,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (21,14,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (22,17,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (22,26,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (22,30,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (22,49,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (22,14,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (23,38,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (23,47,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (23,16,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (23,40,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (23,18,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (24,6,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (24,37,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (24,45,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (24,43,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (24,14,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (25,9,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (25,38,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (25,5,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (25,14,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (25,12,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (26,32,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (26,26,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (26,34,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (26,11,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (26,15,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (27,46,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (27,7,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (27,12,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (27,38,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (27,11,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (28,11,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (28,3,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (28,44,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (28,31,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (28,2,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (29,46,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (29,42,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (29,19,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (29,36,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (29,8,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (31,23,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (31,8,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (31,10,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (31,12,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (31,13,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,16,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,30,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,37,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,12,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,35,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (32,19,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,32,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,47,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,40,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,42,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,17,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (33,7,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (34,12,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (34,37,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (34,49,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (34,9,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (34,4,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (35,16,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (35,10,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (35,49,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (35,17,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (35,42,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (36,50,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (36,45,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (36,20,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (36,6,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (36,41,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (37,17,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (37,2,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (37,46,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (37,27,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (37,5,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (38,39,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (38,10,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (38,12,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (38,34,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (38,8,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (39,27,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (39,33,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (39,41,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (39,16,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (39,15,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (40,26,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (40,30,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (40,21,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (40,20,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (40,32,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,10,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,38,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,36,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,39,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,47,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (41,18,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (42,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (42,30,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (42,13,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (42,8,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (42,41,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (43,43,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (43,13,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (43,25,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (43,38,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (43,15,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (44,28,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (44,5,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (44,11,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (44,40,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (44,9,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (45,38,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (45,40,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (45,37,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (45,2,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (45,7,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (46,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (46,18,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (46,11,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (46,37,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (46,3,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (47,29,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (47,41,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (47,21,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (47,23,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (47,8,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (48,26,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (48,37,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (48,9,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (48,3,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (48,36,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (49,10,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (49,23,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (49,30,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (49,19,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (49,47,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (50,26,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (50,12,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (50,1,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (50,4,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (50,9,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (51,11,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (51,2,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (51,36,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (51,15,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (51,23,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (52,46,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (52,27,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (52,1,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (52,34,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (52,3,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (53,50,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (53,25,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (53,49,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (53,38,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (53,35,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (54,16,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (54,10,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (54,24,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (54,23,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (54,31,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (55,8,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (55,39,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (55,24,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (55,12,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (55,31,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (56,47,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (56,43,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (56,32,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (56,20,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (56,49,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (57,27,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (57,13,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (57,7,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (57,46,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (57,32,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (58,9,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (58,6,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (58,7,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (58,44,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (58,42,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (59,37,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (59,31,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (59,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (59,22,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (59,20,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (60,16,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (60,42,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (60,46,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (60,12,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (60,4,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (61,11,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (61,20,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (61,4,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (61,15,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (61,48,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (62,15,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (62,24,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (62,18,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (62,41,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (62,32,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (63,41,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (63,33,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (63,4,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (63,20,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (63,26,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (64,27,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (64,22,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (64,28,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (64,36,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (64,2,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (65,47,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (65,45,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (65,2,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (65,16,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (65,19,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (66,12,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (66,32,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (66,23,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (66,25,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (66,44,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (67,28,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (67,16,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (67,36,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (67,43,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (67,4,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (68,39,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (68,41,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (68,34,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (68,2,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (68,7,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (69,46,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (69,10,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (69,49,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (69,26,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (69,4,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (70,17,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (70,40,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (70,27,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (70,2,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (70,39,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (71,7,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (71,19,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (71,48,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (71,44,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (71,34,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (72,36,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (72,17,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (72,18,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (72,42,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (72,32,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (73,1,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (73,39,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (73,9,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (73,14,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (73,35,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (74,39,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (74,35,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (74,8,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (74,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (74,17,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (75,22,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (75,15,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (75,13,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (75,31,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (75,30,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (76,22,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (76,12,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (76,43,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (76,3,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (76,10,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (77,21,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (77,30,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (77,17,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (77,45,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (77,34,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (78,38,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (78,2,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (78,32,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (78,15,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (78,20,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (79,32,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (79,14,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (79,7,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (79,22,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (79,17,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (80,3,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (80,36,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (80,23,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (80,15,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (80,43,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (81,37,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (81,27,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (81,15,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (81,28,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (81,5,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (82,41,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (82,39,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (82,34,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (82,11,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (82,1,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (83,23,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (83,16,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (83,28,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (83,43,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (83,9,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (84,12,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (84,21,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (84,28,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (84,9,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (84,13,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (85,26,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (85,28,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (85,15,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (85,32,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (85,35,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (86,44,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (86,45,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (86,19,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (86,41,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (86,38,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (87,28,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (87,23,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (87,14,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (87,36,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (87,49,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (88,21,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (88,18,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (88,47,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (88,8,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (88,16,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (89,30,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (89,20,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (89,23,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (89,28,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (89,44,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (90,12,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (90,9,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (90,32,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (90,22,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (90,26,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (91,13,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (91,12,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (91,2,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (91,29,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (91,5,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (92,30,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (92,18,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (92,42,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (92,32,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (92,14,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (93,26,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (93,36,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (93,6,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (93,3,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (93,46,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (94,39,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (94,10,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (94,20,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (94,34,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (94,9,2);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (95,39,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (95,37,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (95,44,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (95,46,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (95,41,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (96,23,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (96,35,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (96,5,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (96,46,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (96,32,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (97,40,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (97,7,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (97,39,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (97,37,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (97,12,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (98,2,3);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (98,44,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (98,15,5);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (98,7,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (98,32,10);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (99,2,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (99,41,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (99,47,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (99,38,8);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (99,13,9);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (100,43,4);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (100,37,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (100,38,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (100,47,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (100,45,6);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (101,12,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (101,41,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (101,24,7);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (101,1,1);
INSERT INTO CONSTITUER (idCommande,idProduit,qteCommandee)
VALUES (101,3,1);

INSERT INTO ADRESSE (idClient, idCommande, adresseLivraison)
VALUES (1, 1, '6 Rue du petit moulin');

DROP SEQUENCE seq_formulaire;
CREATE SEQUENCE seq_formulaire
START WITH 1
INCREMENT BY 1;

INSERT INTO FORMULAIRE (idFormulaire, idClient, mailFormulaire, messageFormulaire)
VALUES (seq_formulaire.NEXTVAL, 1, 'esther.pendaries@etu.univ-tlse2.fr', 'messageTest');

-- SELECT * FROM FORMULAIRE;

COMMIT;