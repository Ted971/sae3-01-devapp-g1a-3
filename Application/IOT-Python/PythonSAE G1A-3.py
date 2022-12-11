
from os import *
from time import sleep
import paho.mqtt.client as mqtt
import json
import signal
from datetime import datetime
from configparser import ConfigParser



StockDico = dict()
parser = ConfigParser()
parser.read('Configuration.ini')

def envoie():
    for i in StockDico:
        fd = open(i+'.txt', O_RDWR | O_CREAT | O_APPEND, 0o644)
        write(fd,bytes(StockDico[i], 'utf-8'))

def fonctionALRM(signal,frame):
    envoie()

signal.signal(signal.SIGALRM,fonctionALRM)

def get_data(mqttc, obj, msg):

    jsonMsg = json.loads(msg.payload)
    try:
        """
        Test si le nom de l'appareil est dans la liste des paramètres.
        """
        if(parser.get('devices',jsonMsg["deviceName"]) == 'true'):

            today = datetime.strftime(datetime.now(),"%Y %m %d | %H h %M min %S s")
            device = jsonMsg["deviceName"]

            chaine = "| {0} | {1} ".format(today,device)

            if(parser.get('settings','activity') == 'true'):
                donneeAct = jsonMsg["object"]["activity"]
                #chaine3 ='| Activité : '+ str(donneeAct)+''
                chaine = chaine+'| Activité : '+ str(donneeAct)+''
            if(parser.get('settings','Co2') == 'true'):
                donneeCo2 = jsonMsg["object"]["co2"]
                chaine = chaine+'| Activité : '+ str(donneeCo2)+''
                # chaine1 ='| Co2 : '+ str(donneeCo2) +' ppm '
            if(parser.get('settings','Humidity') == 'true'):
                donneeHum = jsonMsg["object"]["humidity"]
                chaine = chaine+'| Activité : '+ str(donneeHum)+''
                # chaine3 ='| Humidité : '+ str(donneeHum) +' % '
            if(parser.get('settings','illumination') == 'true'):
                donneeIll = jsonMsg["object"]["illumination"]
                chaine = chaine+'| Activité : '+ str(donneeIll)+''
                # chaine3 ='| illumination : '+ str(donneeIll) +' % '
            if(parser.get('settings','pressure') == 'true'):
                donneePre = jsonMsg["object"]["pressure"]
                chaine = chaine+'| Activité : '+ str(donneePre)+''
                # chaine3 ='| Pression : '+ str(donneePre) +' Pa '
            if(parser.get('settings','Temperature') == 'true'):
                donneeTemp = jsonMsg["object"]["temperature"]
                chaine = chaine+'| Activité : '+ str(donneeTemp)+''
                #chaine2 ='| Température : '+ str(donneeTemp) +' °C '
            if(parser.get('settings','tvoc') == 'true'):
                donneeTvoc = jsonMsg["object"]["tvoc"]
                chaine = chaine+'| Activité : '+ str(donneeTvoc)+''
                #chaine3 ='| tvoc : '+ str(donneeTvoc) +' % '

            chaine = chaine+' | \n'
            StockDico[device] = chaine
            
    except:
        pass

mqttc = mqtt.Client()
mqttc.connect(parser.get('server','nom'), port=1883, keepalive=600)

mqttc.subscribe("application/1/device/+/event/up")
mqttc.subscribe("application/1/device/24e124128c012114/event/up")

mqttc.on_message = get_data

mqttc.loop_start()
while True:
    signal.alarm(int(parser.get('server','time'))*10)
    sleep((int(parser.get('server','time'))*10)+1)
    StockDico = []
