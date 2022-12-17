-- -----------------------------------------------------------------------------
--       CREATION DES CATEGORIES
-- -----------------------------------------------------------------------------

DROP SEQUENCE seq_categorie;
CREATE SEQUENCE seq_categorie
START WITH 1
INCREMENT BY 1;

INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Sous-vêtements', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Pyjamas', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, NULL, 'Vêtements', 'H/F');
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
VALUES (seq_categorie.NEXTVAL, 1, 'Caleçons', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Packs', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Sous-vêtements de sport', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Soutiens-gorge', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Culottes et bas', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Ensemble de lingerie', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Culotte menstruelle', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 1, 'Bodys', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Hauts de pyjamas', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Bas de pyjamas', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Packs de pyjamas', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 2, 'Nuisettes', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'T-Shirts et polos', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Pulls', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Sweats - Shirts', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Pantalons', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Shorts', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Chemises', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 3, 'Accessoires', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Chaussons', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Charentaises', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Chaussettes', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Espadrilles', 'H/F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 4, 'Collants', 'F');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Shorts de bain', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Boxers de bain', 'H');
INSERT INTO Categorie (idCategorie, idCategoriePere, nomCategorie, genreCategorie)
VALUES (seq_categorie.NEXTVAL, 5, 'Maillots', 'H');
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
VALUES (seq_produit.NEXTVAL, 6, 'BOXER EN COTON Marius Tartan Marine');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 6, 'Cinquo de boxers courts en coton');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 7, 'Slip coton');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 16, 'Robe de chambre');
INSERT INTO PRODUIT (idProduit, idCategorie, nomProduit)
VALUES (seq_produit.NEXTVAL, 27, 'Chaussons d''intérieur en laine');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,33,'Donec porttitor tellus');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,4,'volutpat. Nulla facilisis. Suspendisse commodo tincidunt ');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,18,'malesuada fringilla est. Mauris eu turpis. Nulla');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,9,'rhoncus. Nullam velit dui, semper');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,14,'ligula eu enim.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,2,'a feugiat tellus lorem eu metus.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,2,'mauris id sapien. Cras');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,33,'tristique senectus et netus et malesuada');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,14,'magna. Ut tincidunt');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,5,'Phasellus dapibus quam quis diam.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,11,'sem semper erat,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,3,'Morbi sit amet massa. Quisque porttitor eros nec');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,8,'nec ante. Maecenas');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,19,'Donec vitae erat vel pede blandit');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,19,'Aenean eget metus. In nec orci. Donec');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,19,'auctor velit. Aliquam nisl.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,24,'et malesuada fames ac turpis egestas.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,29,'sapien, cursus in, hendrerit consectetuer, cursus et,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,20,'mollis non, cursus non,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,14,'Sed auctor odio a purus. Duis');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,22,'tellus. Aenean egestas hendrerit neque.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,23,'tellus. Suspendisse sed dolor. Fusce mi lorem,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,18,'odio sagittis semper. Nam tempor');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,27,'elit, a feugiat tellus lorem eu');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,20,'est, mollis non, cursus non, egestas a,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,3,'faucibus ut, nulla. Cras eu tellus eu');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,7,'orci, consectetuer euismod est arcu ac');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,29,'Vivamus nibh dolor, nonummy ac, feugiat');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,2,'nec mauris blandit mattis. Cras eget nisi');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,21,'magna a tortor.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,2,'pede nec ante blandit viverra.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,31,'Aliquam adipiscing lobortis risus. In mi pede, nonummy');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,24,'amet lorem semper auctor. Mauris vel turpis.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,12,'odio, auctor vitae, aliquet');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,11,'sodales purus, in molestie');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,29,'Cras lorem lorem,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,16,'dapibus gravida. Aliquam tincidunt, nunc ac mattis');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,23,'nec tempus scelerisque, lorem ipsum');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,7,'magnis dis parturient montes, nascetur ridiculus');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,24,'odio. Etiam ligula tortor,');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,33,'nascetur ridiculus mus. Donec dignissim magna');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,13,'egestas a, dui. Cras pellentesque.');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,29,'mauris sagittis placerat. Cras');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,18,'morbi tristique senectus et netus');
INSERT INTO PRODUIT (idProduit,idCategorie,nomProduit)
VALUES (seq_produit.NEXTVAL,19,'Nunc lectus pede, ultrices a,');

DROP SEQUENCE seq_Client;
CREATE SEQUENCE seq_Client
START WITH 1
INCREMENT BY 1;

INSERT INTO Client (idClient, nomClient, prenomClient, pseudoCLient, mailClient, dteNaissanceClient, paysClient, departementClient, passwordClient)
VALUES (seq_Client.NEXTVAL, 'Pendaries', 'Esther', 'MSI', 'esther.pendaries@etu.univ-tlse2.fr', '14/12/2022', 'France', 31, '1234');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Patterson','Chastity','a','euismod.et@hotmail.edu','26/10/2019','France',33,'NST62RZC4EW');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Mcmillan','Neville','molestie','lobortis.ultrices@outlook.org','09/04/2015','France',18,'LRN71UVT8KU');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Frye','Penelope','dignissim','molestie.pharetra@yahoo.net','18/12/2013','France',30,'UYC48MHB1VN');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Battle','James','ipsum','imperdiet.ullamcorper@outlook.org','23/03/2013','France',9,'UFW31QUG7BZ');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Johnson','Kathleen','libero.','urna@protonmail.edu','15/10/2022','France',26,'JAT27SEP7EN');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Barnes','Noelle','Etiam','vivamus.euismod@outlook.couk','19/02/2007','France',28,'YQE58NGM1HX');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Sheppard','Aidan','vel','magna.cras.convallis@yahoo.ca','08/10/2009','France',1,'MSZ59QHX0DI');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Chase','Rhiannon','dui.','mauris@outlook.ca','21/08/2003','France',27,'MYW72VVR1GG');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Harris','Charles','Suspendisse','lacus.quisque@yahoo.com','24/09/1996','France',57,'UOH40FTT5LW');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Holder','Sharon','natoque','sed.nec@google.edu','04/09/2014','France',73,'NWW67ZPG5EN');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Fernandez','Phyllis','Nulla','cursus.vestibulum.mauris@aol.edu','26/04/1995','France',60,'HMH70DHH4NP');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Bender','Alyssa','iaculis','arcu.vivamus.sit@icloud.org','17/06/2000','France',95,'ASY23LWJ1XS');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Kemp','Axel','mi','vulputate.lacus@outlook.edu','10/05/2022','France',14,'PNM91PWW9HP');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Martin','Jillian','non,','dapibus.quam@yahoo.couk','08/09/2001','France',85,'XYN28VGE3PW');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Cardenas','Nita','nec','euismod.mauris@google.ca','01/09/2006','France',35,'GJD87RQF6VC');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Barnes','Ori','eleifend','suscipit.nonummy@aol.net','11/07/2003','France',35,'XZN76WMO4UC');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Hamilton','Porter','porttitor','enim.consequat.purus@outlook.ca','31/08/1996','France',33,'OOL98JYR6UG');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Higgins','Alvin','purus','iaculis.enim@yahoo.net','23/06/2013','France',3,'WVA78UCV5JB');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Burks','Darius','Quisque','massa@protonmail.org','08/07/1997','France',73,'HUY32YSL6HS');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Coffey','Debra','eget','in.nec.orci@hotmail.couk','06/11/2001','France',45,'MJK35PUD1QR');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Butler','Trevor','arcu','lobortis.tellus@yahoo.ca','29/07/2014','France',88,'KRD02QTT1LF');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Hancock','Chancellor','Sed','pede.et.risus@hotmail.com','21/09/2005','France',1,'PVR74JDL0EK');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Hampton','Katell','Morbi','aliquet.metus.urna@yahoo.com','27/08/1995','France',6,'RZS95UUI2DP');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Phillips','Coby','quis','non.ante@protonmail.edu','29/04/2011','France',7,'MEO36YKH0OH');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'William','Ria','eleifend','rutrum@icloud.couk','11/12/2010','France',57,'BNT49NDV1HO');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Hester','Venus','Sed','class.aptent@icloud.ca','28/07/2004','France',32,'GMO38XEH1LI');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Payne','Lucas','egestas','pharetra.felis.eget@aol.net','25/10/1995','France',60,'FRS79RXR5YH');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Pitts','Giselle','nisl','tempus.eu@yahoo.couk','30/01/2019','France',28,'ZXM67IJF7OF');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Mcmahon','Aimee','Suspendisse','lectus.nullam@google.org','23/02/2011','France',69,'ARD68DOU2CM');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Clark','Emery','ac','sed.eu@yahoo.ca','02/01/2017','France',86,'VFV57LIN8EH');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Campbell','Abraham','aliquam,','senectus.et.netus@outlook.edu','16/01/2016','France',91,'BYR42BOU7DH');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Moses','Zephr','dis','porttitor.scelerisque.neque@icloud.edu','30/10/2015','France',12,'UUY64JRZ3IM');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Chavez','Stephen','consectetuer,','diam@protonmail.edu','01/11/1999','France',48,'TIK22PVT2CX');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Best','Nerea','Donec','class@hotmail.couk','01/03/2007','France',33,'YCG76GIY4DB');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Reyes','Iris','nisl.','urna.nec@outlook.net','01/09/2002','France',2,'PIB82KMN7LB');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Thornton','Kay','nunc,','sit.amet.ultricies@aol.edu','10/01/2009','France',7,'NNB46EOU7PD');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Strickland','Hakeem','Integer','facilisis.magna@protonmail.couk','19/03/2018','France',68,'NCI78UXP3PN');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Stephens','Brianna','diam','in@yahoo.ca','21/04/2004','France',92,'PAH73VHC8QI');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Sparks','Simone','semper','elementum.sem.vitae@icloud.edu','25/07/2001','France',92,'BNA47AXW4YJ');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Morin','Mohammad','mi','nullam@google.org','29/09/2004','France',34,'BMZ72QEH9VV');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Pacheco','Jaime','Mauris','mauris@protonmail.com','17/11/2004','France',44,'USS31JRT7XR');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Rush','Davis','neque.','tellus@hotmail.net','03/03/2001','France',33,'VSR39SIY8DM');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Bass','Beau','Donec','sed.nunc@hotmail.com','10/06/2012','France',78,'GLD68UIS4JA');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Matthews','Mari','eu','fusce@outlook.net','11/05/2013','France',6,'UWB06CTF1PA');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Sullivan','Abraham','inceptos','ligula.elit@hotmail.net','10/04/2011','France',6,'ZPL29PVI1EK');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Alexander','Jerome','nibh','feugiat.tellus@icloud.couk','28/02/2021','France',54,'SYU78KQV5VX');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Collins','Murphy','risus.','lorem.ut.aliquam@yahoo.net','18/07/2010','France',35,'EOW69SSS8BW');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Vaughan','Zelda','metus.','et.lacinia.vitae@yahoo.com','31/10/1995','France',45,'IQP42XIG9UP');
INSERT INTO CLIENT (idClient,nomClient,prenomClient,pseudoClient,mailClient,dteNaissanceClient,paysClient,departementClient,passwordClient)
VALUES (seq_Client.NEXTVAL,'Garrett','Chiquita','diam','lobortis.quis@google.org','15/09/2018','France',24,'LXW61FGC3GC');

DROP SEQUENCE seq_detailP;
CREATE SEQUENCE seq_detailP
START WITH 1
INCREMENT BY 1;

INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, colorisProduit, tailleProduit,  matiereProduit, descriptionProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 1, 'Tartan marine', 'M', 'Coton', 'Boxer sans coutures côté.', 39.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, colorisProduit, tailleProduit,  matiereProduit, descriptionProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 2, 'Multiples', 'M', 'Coton', 'Boxers sans coutures côté.', 165.00);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, colorisProduit, tailleProduit,  matiereProduit, descriptionProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 3, 'Blanc', 'S', 'Coton', 'Slip sans couture côté.Ceinture jacquard élastiquée.', 34.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, colorisProduit, tailleProduit,  matiereProduit, descriptionProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 4, 'Noir', 'XL', 'Coton', 'Robe de chambre sans couture coté.', 149.99);
INSERT INTO DETAILPRODUIT (idDetailProduit, idProduit, colorisProduit, tailleProduit,  matiereProduit, descriptionProduit, prixProduit)
VALUES (seq_detailP.NEXTVAL, 5, 'Rouge', '47', 'Laine', 'Rembourrage laine. Semelle anti-dérapante. Cocarde brodée marineé.', 59.99);

SELECT * FROM DETAILPRODUIT;

INSERT INTO STOCKER (idProduit, idDetailProduit, qteStockee)
VALUES (1, 1, 1200);
INSERT INTO STOCKER (idProduit, idDetailProduit, qteStockee)
VALUES (2, 2, 25);
INSERT INTO STOCKER (idProduit, idDetailProduit, qteStockee)
VALUES (3, 3, 601);
INSERT INTO STOCKER (idProduit, idDetailProduit, qteStockee)
VALUES (4, 4, 258);
INSERT INTO STOCKER (idProduit, idDetailProduit, qteStockee)
VALUES (5, 5, 1350);

SELECT * FROM STOCKER;

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


SELECT * FROM PAIEMENT;
SELECT * FROM COMMANDE;

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


SELECT * FROM CONSTITUER;

INSERT INTO ADRESSE (idClient, idCommande, adresseLivraison)
VALUES (1, 1, '6 Rue du petit moulin');

SELECT * FROM ADRESSE;

DROP SEQUENCE seq_formulaire;
CREATE SEQUENCE seq_formulaire
START WITH 1
INCREMENT BY 1;

INSERT INTO FORMULAIRE (idFormulaire, idClient, mailFormulaire, messageFormulaire)
VALUES (seq_formulaire.NEXTVAL, 1, 'esther.pendaries@etu.univ-tlse2.fr', 'MessageDeTest');

SELECT * FROM FORMULAIRE;

COMMIT;