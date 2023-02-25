# MongoDB Cheat Sheet

## Création de la base de données

- `use <nom de la base de données>`

Change de base de données ou la crée si elle n'existe pas.

- `db.createCollection("<nom de la collection>")`

Créé une collection (*une table*) dans la base de données courante.

- `show dbs`

Affiche la liste des bases de données.

- `db`

Affiche la base de données courante.

- `show collections`

Affiche la liste des collections de la base de données courante.

- `db.dropDatabase()`

Supprime la base de données courante.

- `db.<nom de la collection>.drop()`

Supprime la collection courante.

## Insertion de données

- `db.<nom de la collection>.insertOne({<nom de l'attribut>: <valeur>, ...})`

Insère un document dans la collection courante.

- `db.<nom de la collection>.insertMany([{<nom de l'attribut>: <valeur>, ...}, {<nom de l'attribut>: <valeur>, ...}])`

Insère plusieurs documents dans la collection courante.

## Récupération de données

- `db.<nom de la collection>.find()`

Récupère tous les documents de la collection courante.

- `db.<nom de la collection>.find({<nom de l'attribut>: <valeur>, ...})`

Récupère tous les documents de la collection courante qui ont un attribut avec une valeur donnée.

- `db.<nom de la collection>.find({<nom de l'attribut>: <valeur>}, {<nom de l'attribut>: 1, "_id": 0})})`

Récupère tous les documents de la collection courante qui ont un attribut avec une valeur donnée et affiche seulement les attributs demandés.

## Mise à jour de données

- `db.<nom de la collection>.updateOne({<nom de l'attribut>: <valeur>}, {$set: {<nom de l'attribut>: <valeur>, ...}})`

Met à jour le premier document de la collection courante qui a un attribut avec une valeur donnée.

- `db.<nom de la collection>.updateMany({<nom de l'attribut>: <valeur>}, {$set: {<nom de l'attribut>: <valeur>, ...}})`

Met à jour tous les documents de la collection courante qui ont un attribut avec une valeur donnée.

- `db.<nom de la collection>.updateOne({<nom de l'attribut>: <valeur>}, {$push: {<nom de l'attribut>: <valeur>, ...}})`

Ajoute une valeur à un tableau dans le premier document de la collection courante qui a un attribut avec une valeur donnée.

- `db.<nom de la collection>.updateOne({<nom de l'attribut>: <valeur>}, {$pull: {<nom de l'attribut>: <valeur>, ...}})`

Supprime une valeur d'un tableau dans le premier document de la collection courante qui a un attribut avec une valeur donnée.

## Suppression de données

- `db.<nom de la collection>.deleteOne({<nom de l'attribut>: <valeur>})`

Supprime le premier document de la collection courante qui a un attribut avec une valeur donnée.

- `db.<nom de la collection>.deleteMany({<nom de l'attribut>: <valeur>})`

Supprime tous les documents de la collection courante qui ont un attribut avec une valeur donnée.

## Opérateurs

- `$gt` : supérieur à
- `$gte` : supérieur ou égal à
- `$lt` : inférieur à
- `$lte` : inférieur ou égal à
- `$ne` : différent de
- `$in` : dans un tableau
- `$nin` : pas dans un tableau
- `$and` : et
- `$or` : ou
- `$not` : non

## Types de données

- booléen : `true` ou `false`
- nombre : `1`, `1.5`, `1.5e+2`
- chaîne de caractères : `"Hello World"`
- tableau : `["Hello", "World"]`
- objet : `{"Hello": "World"}`
- date : `new ISODate("YYYY-MM-DDTHH:MM:SSZ")`