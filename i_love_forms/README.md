# I Love Forms

Dans cette version de ce projet, nous avons une base de donnée très réduite avec un peu de front avec un ajout de user.
<br/>
Fait par [@Yannis](https://thehackingproject.slack.com/messages/DD14VBZ0U) et Quentin(@Dremsis)

## How to use

Pour commencer il faut cloner le projet :
```
git clone https://github.com/JostQ/i_love_forms
```

Ensuite installe les dépendances :
```
bundle install
```
On créé la base de données :
```
rails db:create
```
On migre la base de données :
```
rails db:migrate
```

Et on lance le serveur :
```
rails server
```

Le site se trouve à l'adresse suivante :
```
localhost:3000
```

Lien vers Heroku ([cliquez ici](https://i-love-forms-513.herokuapp.com/)):
```
https://i-love-forms-513.herokuapp.com/
```
## Nous avons utilisé : 
Ruby 2.5.1<br/>
Rails 5.2.1

## Petit plus

Vous pourrez essayer de laisser les champs vides ou rentrer une adresse mail qui n'est pas dans le format d'un mail et vous verrez le résultat !
