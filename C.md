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

Déclarer une variable globale : déclarer la variable en dehors de toutes fonctions.

### Types

- ``int`` Entier
- ``long`` Entier long
- ``float`` Nombre à virgule simple précision
- ``double`` Nombre à virgule double précision
- ``char`` Caractère
- ``bool`` Booléen

#### Arrays
    int test_scores[25];

    float prices[5] = {3.2, 6.55, 10.49, 1.25, 0.99};

    float prices[5] = {3.2, 6.55}; // Les autres valeurs sont initialisées à 0

    int a[2][3]; /* A 2 x 3 array */

    int a[2][3] = {
        {3, 2, 6},
        {4, 5, 20}
    };

### Pointers
    
    int j = 63;
    int *p = NULL;
    p = &j;
    
    printf("The address of j is %x\n", &j); //The address of j is ff3652cc
    printf("p contains address %x\n", p); //p contains address ff3652cc

## Input / Output
    
### Spécificateurs de format

- ``%d`` Entier
- ``%f`` Nombre à virgule
- ``%c`` Caractère
- ``%s`` Chaîne de caractères
- ``%p`` Pointeur
- ``%e`` Nombre à virgule en notation scientifique
- ``%x`` Nombre hexadécimal

### Input
    char a = getchar(); // Récupère un caractère
    char a[10] = gets(); // Récupère une chaîne de caractères de taille 10
    int a = scanf("%d", &a); // Récupère un entier
    int a = scanf("%f", &a); // Récupère un float
    int a = scanf("%c", &a); // Récupère un caractère
    int a = scanf("%s", &a); // Récupère une chaîne de caractères

*&a est l'adresse de la variable a.*

### Output

    printf("Hello %s!\n", name); // Affiche Hello name!
    printf("Hello %d!\n", age); // Affiche Hello age!
    printf("Hello %f!\n", price); // Affiche Hello price!
    printf("Hello %c!\n", letter); // Affiche Hello letter!
    printf("Hello %s!\n", string); // Affiche Hello string!

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

### for

    for (int i = 0; i < 10; i++) {
        x++;
    }

## Fonctions

    int sum (int num1, int num2) {
        return(num1 + num2);
    }
