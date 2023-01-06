from os import *
import random

def ChiffreAletoire():
    return random.randint(1,9)

def ecriture(indice,couleur):
    cpt = 0
    for ind in tabAc:
        if indice ==  ind:
            chaine = "INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) \n"
            write(fd,bytes(chaine, 'utf-8'))
            var = ChiffreAletoire()
            chaine = "VALUES ('"+str(indice)+"','"+couleur+"','TU','"+str(var)+"'); \n"
            write(fd,bytes(chaine, 'utf-8'))
        else:
            cpt = cpt+1
    cpt2 = 0
    for ind in tabAM:
        if indice ==  ind:
            for taille in tabS:
                chaine = "INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) \n"
                write(fd,bytes(chaine, 'utf-8'))
                var = ChiffreAletoire()
                chaine = "VALUES ('"+str(indice)+"','"+couleur+"','"+taille+"','"+str(var)+"'); \n"
                write(fd,bytes(chaine, 'utf-8'))
        else:
            cpt2 = cpt2+1
    cpt3 = 0
    for ind in tabChe:
        if indice ==  ind:
            for taille in tabTc:
                chaine = "INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) \n"
                write(fd,bytes(chaine, 'utf-8'))
                var = ChiffreAletoire()
                chaine = "VALUES ('"+str(indice)+"','"+couleur+"','"+taille+"','"+str(var)+"'); \n"
                write(fd,bytes(chaine, 'utf-8'))
        else:
            cpt3 = cpt3+1
    if cpt == len(tabAc) and cpt2 == len(tabAM) and cpt3 == len(tabChe):     
        for taille in tabT:
            chaine = "INSERT INTO CARACTERISTIQUES (IDDETAILPRODUIT,COLORISPRODUIT,TAILLEPRODUIT,QTESTOCKEE) \n"
            write(fd,bytes(chaine, 'utf-8'))
            var = ChiffreAletoire()
            chaine = "VALUES ('"+str(indice)+"','"+couleur+"','"+taille+"','"+str(var)+"'); \n"
            write(fd,bytes(chaine, 'utf-8'))
    else:
        pass

fd = open("insert_carateristique.sql",O_CREAT| O_WRONLY |O_TRUNC , 0o644)

tabC=["Bleu","Vert","Violet","Jaune","Orange","Rose","Rouge","Bleu","Marine"]
tabT=["S","M","L","XL","2XL"]
tabS=['85-A','85-B','85-C','85-D','90-A','90-B','90-C','90-D','95-A','95-B','95-C','95-D']
tabTc=['40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50']
tabAc=[48,28]
tabAM=[12]
tabChe=[29,30,31,32,33,34,35,50,51,52,53,54,55]
i=1

bol = True
while bol:
    for elt in  tabC:
        ecriture(i,"Noir")
        ecriture(i,"Blanc")
        ecriture(i,elt)
        i=i+1
        if i >=60:
            exit(0)