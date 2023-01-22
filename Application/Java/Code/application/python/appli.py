from os import *
import sys
from time import sleep
import paho.mqtt.client as mqtt
import json
from datetime import datetime
from configparser import ConfigParser

#StockDico : dictionnaire contenant les données des capteurs
StockDico = dict()

#StockSeuil : liste contenant les données des capteurs qui ont dépassé le seuil
StockSeuil = []

#parser : objet ConfigParser qui permet de lire le fichier de configuration
parser = ConfigParser()

#parser.read('Configuration.ini') : lit le fichier de configuration
parser.read('Configuration.ini')


"""
Écrit dans les fichiers correspondant aux capteurs les données du dictionnaire StockDico
--------------------------------
Open : logs.txt, logsSeuil.txt
"""
def envoie():
    today = datetime.strftime(datetime.now(),"%Y%m%d|%H:%M:%S")
    for i in StockDico:
        fd = open(sys.path[0]+'\\'+i+'.txt', O_RDWR | O_CREAT | O_APPEND, 0o644)
        write(fd,bytes(today+StockDico[i], 'utf-8'))
    for i in StockSeuil:
        fs = open(sys.path[0]+'\\logsSeuil.txt', O_RDWR | O_CREAT | O_APPEND, 0o644)
        write(fs,bytes(i, 'utf-8'))


"""
Méthode qui récupère les données des capteurs, renvoie un message d'erreur si le capteur n'est pas dans la liste des capteurs à prendre en compte
--------------------------------
Paramètres :
    mqttc : client mqtt
    obj : objet
    msg : message
--------------------------------
Returns :
    StockDico : dictionnaire contenant les données des capteurs
    StockSeuil : liste contenant les données des capteurs qui ont dépassé le seuil
"""
def get_data(mqttc, obj, msg):

    jsonMsg = json.loads(msg.payload)
    try:
        #Vérifie dans le fichier Configuration.ini que chaque élément de devices (les capteurs) est défini sur vrai
        if(parser.get('devices',jsonMsg["deviceName"]) == 'true'):

            device = jsonMsg["deviceName"]

            #Début de la création de la chaine de caractère des données des capteurs
            chaine= ""
            
            #Parcourir toutes les variables de object (Les éléments de settings dans le fichier Configuration)
            for i in jsonMsg["object"]:

                #Vérifie dans le fichier Configuration.ini que chaque élément de settings est défini sur vrai ou qu'il est non nul
                if(parser.get('settings',i) == 'true' or parser.get('settings',i) != 'null' ):
                    donnee = jsonMsg["object"][i]
                    tex = 'S'+i

                    #Vérifie dans le fichier Configuration.ini que les données du capteur sont supérieur aux seuil défini
                    if(donnee > int(parser.get('seuil',tex))):
                        StockSeuil.append(device+"|"+donnee)
                        print(donnee+" du capteur "+device+" est élévée ! ")
                    chaine = chaine+'|'+i+':'+ str(donnee)
                else:
                    pass
            chaine = chaine+'| \n'
            print(chaine)
            StockDico[device] = chaine
    except:
        print(jsonMsg["deviceName"]+' pas pris')
        pass

#Connexion au serveur mqtt
mqttc = mqtt.Client()
mqttc.connect(parser.get('server','nom'), port=1883, keepalive=600)

#Abonnement à tout les capteurs
mqttc.subscribe("application/1/device/+/event/up")
mqttc.subscribe("application/1/device/24e124128c012114/event/up")

mqttc.on_message = get_data

#Démarre un nouveau thread qui appelle la méthode loop() à intervalles réguliers
mqttc.loop_start()

while True:
    sleep((int(parser.get('server','time'))*60)+1)
    envoie()
    StockDico = dict()
    StockSeuil = []
