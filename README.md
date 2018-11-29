Exercice WS-CLIENT
=================

Elhadj Oumar DIALLO
Master 2 SITN

**Premièrement**

```
curl https://fr.wikipedia.org/wiki/Dragon -o local.html  
firefox local.html
```
Les pages se ressemblent, mais les liens sont brisés. 
Généralement quand on se rend sur un navigateur, la page web est télécharger avec une requête "get" avant de nous rendre. 
Mais dans le cas d'un fichier local, le contenu de la page est juste chargé depuis le système de fichiers.



**Deuxième**

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



$ curl https://httpbin.org/image -H Accept:image/png -I
HTTP/1.1 200 OK
Connection: keep-alive
Server: gunicorn/19.9.0
Date: Thu, 29 Nov 2018 20:08:21 GMT
Content-Type: image/png
Content-Length: 8090
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
Via: 1.1 vegur

```

Le code de retour est 200, cela qui signifie que la ressource a été trouvée sur le serveur.
Le contenu de la réponse correspond au type accepté par la demande.

**Troisièmement**

Le script [curl-wiki.sh](./curl-wiki.sh)

```
./curl-wiki.sh


{"batchcomplete":true,"query":{"normalized":[{"fromencoded":false,"from":"Bertrand_Russell","to":"Bertrand Russell"}],"pages":[{"pageid":4163,"ns":0,"title":"Bertrand Russell","revisions":[{"revid":793293850,"parentid":793250564,"user":"Worldbruce","timestamp":"2017-07-31T21:20:40Z"},{"revid":793250564,"parentid":793247860,"user":"Rjwilmsi","timestamp":"2017-07-31T15:53:12Z"},{"revid":793247860,"parentid":793063433,"user":"Rjwilmsi","timestamp":"2017-07-31T15:32:40Z"},{"revid":793063433,"parentid":792753782,"user":"Str1977","timestamp":"2017-07-30T11:19:45Z"}]}]},"limits":{"revisions":500}}

```