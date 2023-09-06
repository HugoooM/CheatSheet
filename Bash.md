# Bash CheatSheet

## Les bases

- La  première ligne d'un script doit être `#!/bin/bash`

- Les commandes peuvent être séparées par un `;` ou par un retour à la ligne.

- Pour séparer une commande en plusieurs lignes, utiliser `\`.

### Commentaires

    # Ceci est un commentaire sur une ligne
    : '
    Ceci est un commentaire
    sur plusieurs lignes
    '

### Variables

    x=1 # Variable modifiable
    readonly y=2 # Variable non modifiable
    declare -i z=3 # Variable modifiable de type Int
    declare –a MYARRAY MYARRAY[0]="one"; MYARRAY[1]=5 # Tableau
    command=`ls` # Variable contenant le résultat d'une commande

### Contrôle

    break # Sort d'une boucle
    continue # Passe à l'itération suivante d'une boucle
    exit # Quitte le script

#### Manipulation de variables

    export VAR="value" # Définit une variable d'environnement
    unset VAR # Supprime une variable d'environnement
    echo $VAR # Affiche la valeur de la variable
    x++ # Incrémente x
    x+=2 # Ajoute 2 à x

## Arguments

Pour executer un script avec des arguments, utiliser `./script.sh arg1 arg2`

    $0 # Nom du script
    $1 # Premier argument
    $# # Nombre d'arguments
    $* # Liste des arguments
    $@ # Liste des arguments (avec guillemets)
    $? # Code de retour de la dernière commande
    $$ # PID du processus courant

## Input

    read VAR # Lit une ligne depuis l'entrée standard et la stocke dans la variable VAR
    read -p "Entrez une valeur" VAR # Affiche le texte avant de lire l'entrée

## Output

    echo "text" # Affiche du texte
    echo -n "text" # Affiche du texte sans retour à la ligne

## Conditions

### Opérateurs

- `-eq` Égal à
- `-ne` Différent de
- `-lt` Inférieur à
- `-gt` Supérieur à
- `-le` Inférieur ou égal à
- `-ge` Supérieur ou égal à
- `-z` Chaîne vide
- `-n` Chaîne non vide
- `-f filename` Fichier existant
- `-d filename` Répertoire existant
- `-r filename` Fichier lisible
- `-w filename` Fichier modifiable
- `-x filename` Fichier exécutable
- `-o` ou `||` Opérateur logique OU (la deuxième commande n'est exécutée que si la première renvoie false)
- `-a` ou `&&` Opérateur logique ET (la deuxième commande n'est exécutée que si la première renvoie true)

### If

    if [ $x -eq 1 ]; then
        echo "x vaut 1"
    elif [ $x -eq 2 ]; then
        echo "x vaut 2"
    else
        echo "x ne vaut ni 1 ni 2"
    fi

### Case

    case $x in
        1)
            echo "x vaut 1"
            ;;
        2)
            echo "x vaut 2"
            ;;
        *)
            echo "x ne vaut ni 1 ni 2"
            ;;
    esac

## Boucles

### For

    for i in 1 2 3; 
    do
        echo $i
    done

### While

    while [ $x -lt 10 ]; 
    do
        echo $x
        x=$((x+1))
    done

### Until

    until [ $x -eq 10 ];
    do
        echo $x
        x=$((x+1))
    done

## Fonctions

    function nomFonction {
        echo "Hello"
    }

    nomFonction

Les variables définies dans une fonction sont globales. Pour définir une variable locale, utiliser `local`.