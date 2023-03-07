# VBA - CheatSheet


## Obligations

1. ``Sub NomMacro`` Délimite le début d'une macro et définit son nom


2. ``End Sub`` Délimite la fin de la macro


## Optionnels

- ``'`` Commente la ligne


## Opérations

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

> Créé par Hugo Montiège
