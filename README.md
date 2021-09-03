# Metin2_JSP-JSTL
A simple website that allows you to create an account and follow the best players on the server in the ranking section.
The site was created to allow your friends to register on a private mmo-rpg server in an easy way.

## How to run it with docker engine?
1. Clone this repository.
```
cd /srv
git clone https://github.com/rvva/Metin2_JSP-JSTL/
```

2a. [default] Start docker-compose with default enviroments.
```
cd /srv/Metin2_JSP-JSTL/
docker-compose up --build -d 
```
That's it. Application will be available at localhost, port 80. 

2b. [**optional**] I want to customize enviroments.
All of the environments are stored in *.env* file.

You can edit all of the enviroments, but you need to rember that:
* if you want to edit *MYSQL_PASSWORD*, *MYSQL_USER* veriables you need to do the same in file *dbConnection.jsp* and build project again to apply changes in war file.
* if you edited only *MYSQL_USER* you also need to change the username inside the *db/mt2web_grant.sql* file.

### Aditional information about database
When building a docker, two schematics will be created: player and account.
There are default Metin2 database schemas. It is recommended to use your own database.
It can be remote (edit *dbConnection.jsp*) or local (paste your mysql files into *db/mysql* or edit *docker-compose.yml* to use dump files (docker-entrypoint-initdb.d)).

## Metin boy is the FreeBSD boi.
In this case you need to setup Apache Tomcat and MySQL server in traditional way. 

## Production use - SSL with Let's Encrypt
For production use with both docker and FreeBSD use a reverse proxy - for example Caddy reverse proxy.
If you want to use my Caddy recommendation, be sure to change the web application port in docker-compose.yml from 80 to another. Caddy uses ports 80 and 443.



