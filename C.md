# C CheatSheet

## Obligations

1. ``int main()`` Délimite le début du programme
2. ``return 0;`` Délimite la fin du programme

## Bibliothèques
1. ``#include <stdio.h>`` Inclut la bibliothèque standard d'entrées/sorties
2. ``#include <stdlib.h>`` Inclut la bibliothèque standard
3. ``#include <string.h>`` Inclut la bibliothèque standard de chaînes de caractères
4. ``#include <math.h>`` Inclut la bibliothèque standard de fonctions mathématiques
5. ``#include <time.h>`` Inclut la bibliothèque standard de fonctions de temps
6. ``#include <ctype.h>`` Inclut la bibliothèque standard de fonctions de caractères
7. ``#include <stdbool.h>`` Inclut la bibliothèque standard de booléens
8. ``#include <unistd.h>`` Inclut la bibliothèque standard de fonctions système

## Variables

### Déclaration

- ``int nomVariable;`` Déclare une variable
- ``int nomVariable = 0;`` Déclare une variable et lui affecte une valeur
- ``int nomVariable1, nomVariable2;`` Déclare plusieurs variables
- ``extern int nomVariable;`` Déclare une variable externe
- ``static int nomVariable;`` Déclare une variable statique
- ``const int nomVariable = 0;`` Déclare une variable constante

### Types

- ``int`` Entier
- ``long`` Entier long
- ``float`` Nombre à virgule simple précision
- ``double`` Nombre à virgule double précision
- ``char`` Caractère

## Conditions et boucles
### Comparaisons

- ``==`` Égal à
- ``!=`` Différent de
- ``<`` Inférieur à
- ``>`` Supérieur à
- ``<=`` Inférieur ou égal à
- ``>=`` Supérieur ou égal à
- ``&&`` Et
- ``||`` Ou
- ``!`` Non
- ``?`` Alors
- ``:`` Sinon

### if
    if (x >= 0){
        y = x;
    }

    else {
            y = -x;
    }
**Equivalent à :**
    ``y = (x>=0) ? x:-x;``

### switch
    switch (x) {
        case 1:
            y = 1;
            break;
        case 2:
            y = 2;
            break;
        default:
            y = 0;
            break;
    }

### while
    while (x < 10) {
        x++;
    }

### do while
    do {
        x++;
    } while (x < 10);