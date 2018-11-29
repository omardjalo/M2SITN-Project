Exercice WS-CLIENT
=================

Elhadj Oumar DIALLO
Master 2 SITN

**Premièrement**

```
curl https://fr.wikipedia.org/wiki/Dragon -o local.html  
firefox local.html
```
Les pages se ressemblent, mais les liens sont brisés. Généralement quand on se rend sur un navigateur, la page web est télécharger avec une requête "get" avant de nous rendre. 
Mais dans le cas d'un fichier local, le contenu de la page est juste chargé depuis le système de fichiers.

```

$ curl https://httpbin.org/image -H Accept:image/jpeg -I

HTTP/1.1 200 OK
Connection: keep-alive
Server: gunicorn/19.9.0
Date: Thu, 29 Nov 2018 19:34:19 GMT
Content-Type: image/jpeg
Content-Length: 35588
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
Via: 1.1 vegur

```
