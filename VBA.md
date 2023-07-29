# VBA - CheatSheet


## Obligations

1. ``Sub NomMacro`` Délimite le début d'une macro et définit son nom


2. ``End Sub`` Délimite la fin de la macro


## Optionnels

- ``'`` Commente la ligne
- ``_`` Permet de continuer une ligne sur la suivante

## Variables
### Déclaration
- ``Dim NomVariable As TypeVariable`` Déclare une variable
- Variables globales : ``Public NomVariable As TypeVariable``
- Variables constantes : ``Const NomVariable As TypeVariable = Valeur``
- Variables statiques : ``Static NomVariable As TypeVariable``

### Types
- ``Integer`` Entier
- ``Long`` Entier long
- ``Single`` Nombre à virgule simple précision
- ``Double`` Nombre à virgule double précision
- ``String`` Chaîne de caractères
- ``Boolean`` Booléen
- ``Date`` Date
- ``Object`` Objet
- ``Variant`` Type variant
- ``Range`` Case ou plage de cases
- ``Workbook`` Classeur
- ``Worksheet`` Feuille de calcul
- ``Chart`` Graphique
- ``tab(x)`` Tableau de données de longueur x
- ``tab(x, y)`` Tableau de données à 2 dimensions de longueur x et y

#### POO
- ``Dim NomVariable As NomClasse`` Déclare une variable objet
- ``NomVariable.NomMéthode`` Appelle une méthode de l'objet
- ``NomVariable.Attribut = Valeur`` Modifie un attribut de l'objet

### Opérations
- ``NomVariable = Valeur`` Affecte une valeur à une variable
- ``Set NomVariable = Valeur`` Affecte une valeur à une variable objet
- ``NomVariable = NomVariable & "text"`` Concatène une variable avec un texte
- ``NomVariable = NomVariable & Chr(10)`` Ajoute un retour à la ligne à une variable
- ``NomVariable = NomVariable & Chr(9)`` Ajoute une tabulation à une variable
- ``NomVariable = NomVariable & Chr(34)`` Ajoute des guillemets à une variable
- ``NomVariable = NomVariable & Chr(39)`` Ajoute des apostrophes à une variable 

## Opérations

### Comparaisons
- ``=`` Égal à
- ``<>`` Différent de
- ``<`` Inférieur à
- ``>`` Supérieur à
- ``<=`` Inférieur ou égal à
- ``>=`` Supérieur ou égal à
- ``Is`` Compare deux objets
- ``Like`` Compare deux chaînes de caractères
- ``And`` Et logique
- ``Or`` Ou logique
- ``Xor`` Ou exclusif logique
- ``Not`` Non logique
- ``Mod`` Modulo

#### Comparaisons de texte
- ``Like "text"`` Égal à
- ``Like "text*"`` Commence par
- ``Like "*text"`` Finit par
- ``Like "*text*"`` Contient
- ``Like "text?text"`` Contient un caractère entre les deux textes
- ``Like "text[abc]text"`` Contient un caractère parmi les trois entre les deux textes
- ``Like "text[!abc]text"`` Contient un caractère qui n'est pas parmi les trois entre les deux textes
- ``Like "text#text"`` Contient un chiffre entre les deux textes
- ``Like "text[text]"`` Contient un caractère entre les deux textes 

### Conditions
#### If
``If Condition Then`` Début d'une condition

``ElseIf Condition Then`` Condition alternative

``Else`` Condition par défaut

``End If`` Fin de la condition

#### Select Case
``Select Case Condition`` Début d'une condition

``Case Condition`` Condition alternative

``Case Else`` Condition par défaut

``End Select`` Fin de la condition

### Boucles
#### For
``For i = 1 To 10`` Début d'une boucle

``Next i`` Fin de la boucle

#### For Each
``For Each NomVariable In NomTableau`` Début d'une boucle

``Next NomVariable`` Fin de la boucle

#### Do While
``Do While Condition`` Début d'une boucle

``Loop`` Fin de la boucle

#### Do Until
``Do Until Condition`` Début d'une boucle

``Loop`` Fin de la boucle

#### Do
``Do`` Début d'une boucle

``Loop While Condition`` Fin de la boucle

### Fonctions

#### Fonctions de texte
- ``Len(NomVariable)`` Longueur d'une chaîne de caractères
- ``Left(NomVariable, x)`` x premiers caractères d'une chaîne de caractères
- ``Right(NomVariable, x)`` x derniers caractères d'une chaîne de caractères
- ``Mid(NomVariable, x, y)`` y caractères à partir du caractère x d'une chaîne de caractères
- ``UCase(NomVariable)`` Met en majuscule une chaîne de caractères
- ``LCase(NomVariable)`` Met en minuscule une chaîne de caractères
- ``Trim(NomVariable)`` Supprime les espaces avant et après une chaîne de caractères
- ``Replace(NomVariable, "text", "text")`` Remplace un texte par un autre dans une chaîne de caractères
- ``InStr(NomVariable, "text")`` Recherche un texte dans une chaîne de caractères

#### Fonctions de date
- ``Date`` Date du jour
- ``Time`` Heure du jour
- ``Now`` Date et heure du jour
- ``CDate("text")`` Convertit une chaîne de caractères en date
- ``DateAdd("d", x, Date)`` Ajoute x jours à la date
- ``DateDiff("d", Date1, Date2)`` Différence entre deux dates en jours
- ``DatePart("d", Date)`` Renvoie le jour de la date
- ``DateSerial(Année, Mois, Jour)`` Renvoie la date
- ``DateValue(Date)`` Renvoie la date
- ``Day(Date)`` Renvoie le jour de la date
- ``Month(Date)`` Renvoie le mois de la date
- ``Year(Date)`` Renvoie l'année de la date
- ``Weekday(Date)`` Renvoie le jour de la semaine de la date
- ``WeekdayName(Weekday(Date))`` Renvoie le jour de la semaine de la date en texte
- ``MonthName(Month(Date))`` Renvoie le mois de la date en texte
- ``Hour(Time)`` Renvoie l'heure de la date
- ``Minute(Time)`` Renvoie les minutes de la date

### Sélections
- ``Sheets("Feuil2").Activate`` Active la feuille 2 (la sélectionne), **la feuille doit exister**
- ``Workbooks("Classeur2.xlsx")`` Sélectionne le fichier Classeur2
- ``Columns("A:A").Select`` Sélectionne toute la colonne A
- ``Range("A8").Select`` Sélectionne la case A8
- ``Cells(8, 1).Select`` Sélectionne la case de la ligne 8 et de la colonne 1 (A8)
- ``Range("A1:A8").Select`` Sélectionne les cases allant de A1 à A8
- ``Range("A1, A8").Select`` Sélectionne les cases A1 et A8
- ``Range("ma_plage").Select`` Sélectionne la plage nommé *ma_plage*
- ``Range("2:6").Select`` et ``Rows("2:6").Select`` Sélectionne les lignes 2 à 6
- ``Range("B:G").Select`` et ``Columns("B:G").Select`` Sélectionne les colonnes B à G
- ``Selection`` Sélection actuelle (de la souris ou de précédentes sélections)

### Modifications de données
- ``.ClearContents`` Supprime les données de la sélection
- ``.Cut Destination:=Columns("A:A")`` Coupe la sélection dans la colonne A. Idem avec ``copy``
- ``.Value = "text"`` Modifie le texte de la sélection, *pour un nombre : sans """*

### Modifications de mise en forme
#### Modification du texte
- ``.Font.Name = "Arial"`` Modifie la police
- ``.Font.Size = 18`` Modifie la taille de la police
- ``.Font.Bold = True`` Mets le texte en **gras**
- ``.Font.Italic = True`` Mets le texte en _italique_
- ``.Font.Underline = True`` Souligne le texte

#### Modification des bordures
- ``.Borders.Value = 1`` Active les bordures



### Autres
- ``Int(Rnd * 10) + 1`` Génère un entier aléatoire entre 1 et 10
- ``.Visible = 2`` Masque une feuille (-1 pour l'afficher)
- ``Exit Sub`` Arrête l'exécution de la macro (fonctionne aussi avec ``Function``, ``Do`` et ``For``)
- ``Application.ScreenUpdating = False`` Désactive le rafraîchissement de l'écran
#### With
``With NomVariable`` Début d'une boucle

``.Value = "text"`` Modifie le texte de la variable

``End With`` Fin de la boucle

> Créé par Hugo Montiège
