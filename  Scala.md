# Scala CheatSheet

## Les bases

### Commentaires

    // Ceci est un commentaire sur une ligne
    /* Ceci est un commentaire
    sur plusieurs lignes */

### Variables
    
    var x = 1 // Variable modifiable
    val y = 2 // Variable non modifiable
    var z: Int = 3 // Variable modifiable de type Int

### Types

- `Int` Entier
- `Long` Entier long
- `Float` Nombre à virgule simple précision
- `Double` Nombre à virgule double précision
- `Char` Caractère ('a')
- `String` Chaîne de caractères ("a")
- `Boolean` Booléen (true ou false)

### Opérations

- `+` Addition
- `-` Soustraction
- `*` Multiplication
- `/` Division
- `%` Modulo
- `==` Égal à
- `!=` Différent de
- `<` Inférieur à
- `>` Supérieur à
- `<=` Inférieur ou égal à
- `>=` Supérieur ou égal à
- `&&` Et
- `||` Ou
- `!` Non
- `++` Incrémentation
- `+=` Addition et affectation


    6 / 4   // 1
    6.0 / 4 // 1.5
    6 / 4.0 // 1.5

### Fonctions

- `:type (Object)` Renvoie le type de l'objet
- `:save <file>` Sauvegarde l'historique dans un fichier
- `:load <file>` Charge un fichier dans l'historique
- `:quit` Quitte l'interpréteur
- `:h?` Affiche l'historique des commandes
- `:println("text")` Affiche du texte sur une nouvelle ligne
- `:print("text")` Affiche du texte


### Manipulation de String

val str = "Hello World!"

    str.length // 12
    str.toUpperCase // HELLO WORLD!
    str.trim // Hello World!
    str.substring(0, 5) // Hello
    str.replace("Hello", "Goodbye") // Goodbye World!
    str.take(5) // Hello
    str.drop(6) // World!

- `\n` Retour à la ligne
- `\"` Guillemet

**Interpolation de String**

    val x = 10
    s"Hello $x" // Hello 10
    s"Hello ${x + 1}" // Hello 11
    s"Hello ${Math.pow(x, 2)}" // Hello 100.0
    f"Hello ${Math.pow(x, 2)}%1.0f" // Hello 100
    f"Square root of 122: ${math.sqrt(122)}%1.4f" // "Square root of 122: 11.0454"

## Fonctions

    def nomFonction(param1: Type1, param2: Type2): TypeRetour = {
        // Instructions
        // La dernière expression est la valeur retournée
    }

## Boucles

### for

    for (i <- 1 to 10) {
        println(i)
    }

### while

    var i = 0
    while (i < 10) {
        println(i)
        i += 1
    }

### do while
    
        var i = 0
        do {
            println(i)
            i += 1
        } while (i < 10)

## Conditions

### if

    if (x >= 0) {
        y = x
    } else {
        y = -x
    }

## Data structures

    val a = Array(1, 2, 3, 4, 5) // Tableau
    val b = List(1, 2, 3, 4, 5) // Liste
    val c = Set(1, 2, 3, 4, 5) // Ensemble
    val d = Map("a" -> 1, "b" -> 2, "c" -> 3) // Dictionnaire

    a(0) // 1
    b(0) // 1
    c(0) // Erreur
    d("a") // 1
    a(0) = 10 // OK
    b(0) = 10 // Erreur
    c(0) = 10 // Erreur
    d("a") = 10 // OK

    safeD = d.withDefaultValue("No value") // Dictionnaire avec valeur par défaut
    safeD("d") // No value

    
    val t = (1, 2, 3, 4, 5) // Tuple
    t._1 // 1
    t._2 // 2

## POO

### Classes

    class NomClasse(param1: Type1, param2: Type2) {
        // Attributs
        val attribut1: Type1 = param1
        val attribut2: Type2 = param2

        // Méthodes
        def nomMethode(param1: Type1, param2: Type2): TypeRetour = {
            // Instructions
            // La dernière expression est la valeur retournée
        }

        private def nomMethodePrivee(param1: Type1, param2: Type2): TypeRetour = {
            // Instructions
            // La dernière expression est la valeur retournée
        }
    }

    val nomVariable = new NomClasse(param1, param2)





> Hugo Montiège