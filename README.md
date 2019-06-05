# Jepsen-Brite

You can access to the website [on heroku](https://jepsenbrite-jnsnc.herokuapp.com/)  

The back end useful instructions are [here](https://github.com/NadTr/Jepsen-Brite/blob/master/Jepsen-Brite%20API.md)

## Install the dependencies :

  * `composer install`
  * `npm install`


## Settings :

  * create .env file, copy the inside of the .env.example and change your settings (database and/or email).
  * `php artisan key:generate`
  * `php artisan jwt:secret`

### Launch de database :

  * `docker-compose up`
  * `php artisan migrate`
  * `php artisan db:seed`

## Launch :

  * `php artisan serve`
  * `docker-compose up`
  * `npm run watch`

## Launch on Heroku :

  * `npm run prod`
  * `git push heroku master`
  
  
  
## The instructions for this project :

## Le projet Jepsen Brite

Ici nous allons créer un gestionnaire d'évènements (comme Event Brite pour ceux qui connaissent).

### Gestion des users

* Il doit être possible de se créer un compte et de se logger.
* La création de users est publique.
* Il n'y a pas de compte administrateur et aucune section admin. Tout le monde a les mêmes droits.
* Quand un user est créé il doit recevoir un mail l'avertissant de son inscription.
* Un user doit avoir une adresse mail (pour les mails qui lui seront envoyés) et un pseudonyme (qui sera affiché sur le site, puisqu'on ne peut pas raisonnablement publier l'adresse mail de quelqu'un comme on le veut).

### Page d'accueil

* La page d'accueil présente une liste des évènements à venir, par ordre chronologique (le prochain à se produire est le premier présenté, puis le suivant, etc...). Chaque évènement doit être affiché avec son nom, sa date et heure et sa description.
* Sur chaque évènement un lien doit permettre d'aller à la page de l'évènement.
* Il doit être possible d'accéder à la page de création d'évènement depuis la page d'accueil.

### Page d'évènement

* La page d'évènement présente toutes les informations de l'évènement ainsi que la liste des inscrits.
* Elle doit permettre de s'inscrire ou de se désinscrire à l'évènement (si on est loggé).
* L'auteur de l'évènement doit avoir la possibilité de le modifier (mais personne d'autre ne peut le faire). Il est possible de rediriger vers une autre page pour l'édition ou de le faire dans la même page (à vous de voir ce qui est le plus ergonomique).


### Page de création d'évènement

* N'importe quel user loggé peut créer un évènement.
* En dehors ce cela c'est comme la page d'édition d'évènement.

### Page des évènements passés

* C'est le même principe que la page d'accueil sauf qu'elle permet de voir les évènements qui ont déjà eu lieu, par ordre anté-chronologique.

### Bonus

* Proposer également un affichage en calendrier de la liste des évènements à venir (des tabs pourraient, par exemple, permettre de passer d'un mode d'affichage à l'autre). [Exemple](https://www.brussels-expo.com/events/calendrier/).
* Envoyer de joli mails avec un thème.

## Contraintes techniques

* Le frontend doit être une single page application en React. La génération de HTML server-side n'est pas autorisée, une seule page doit être distribuée par l'application Backend et toute la logique d'affichage doit se faire coté client.
* Le backend doit être une API JSON faite avec Laravel.
* L'envoi de mails doit aussi se faire coté backend avec Laravel.
* Le projet doit être déployé sur [Heroku](https://heroku.com).
* La base de données utilisée doit être PostgreSQL (bon, dans l'absolu on pourrait accepter autre chose mais c'est le mieux supporté sur Heroku).
* L'authentification doit utiliser JWT, pas les sessions de Laravel.
* Comme d'habitude il faut bien penser à hasher ses mots de passe (avec une solution comme *bcrypt* ou similaire).
* Aucun credential (Heroku, SMTP,...) ne doit être commité dans le repo Github.
* Vous devez utiliser du HTTPS pour de déploiement de prod.
