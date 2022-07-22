# DNS SERVER PYTHON
## Présentation
Serveur DNS en python avec stockage des logs. Il peut être utilisable juste avec le fichier ``` dns/dnserver.py ``` qui est parametré pour tourner sur 192.168.1.1:53 et les dépendances nécéssaires dans ``` installation.sh ```.
Affichage en live des requêtes effectuées et du nombre de personnes connectées.
Stockage des noms de domaines contactés avec l'IP associée.
Timeout des requêtes trop longues pour ne pas bloquer le serveur.
La version ```dnsserverpc.py``` permet la redirection sur un portail captif si on veut forcer l'utilisateur à se connecter avant d'avoir un accès internet.
## Installation
```bash
    git clone https://github.com/Thhems/dns-server-python.git
    cd dns-server-python
    sudo ./installation.sh
```
## Lancement
#### Serveur DNS
```bash
    sudo ./setup.sh -n
```
#### Serveur DNS Portail captif
Les pages dans ```dns/portail_captif/``` doivent être copiées dans ```/var/www/html/``` (y compris le .htaccess). Le code fonctionne sur un serveur Apache2 et vérifie les IP connectées ou non grâce au fichier ```/var/www/html/.htaccess```.
```bash
    sudo ./setup.sh -p
```
## Affichage des logs
```bash
    sudo ./printdns.sh
```
## Arrêt

```bash 
    sudo ./stop.sh
```
_______________________________________________________________
**A partir du projet https://github.com/howCodeORG/howDNS.git**
