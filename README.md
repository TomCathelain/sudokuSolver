🧩 Sudoku Solver

📄 Présentation

Le Sudoku Solver est un projet réalisé en Haskell qui permet de résoudre des grilles de Sudoku de manière automatisée. Ce programme utilise des algorithmes de vérification pour s'assurer que les grilles respectent les règles du jeu et trouve la solution en cas de grille valide. 🧠

👨‍💻 Auteurs

Tom Cathelain
19 ans, étudiant en 2e année à Epitech 🎓

📌 Prérequis

Avant de pouvoir utiliser ou compiler ce projet, vous devez avoir installé les outils suivants sur votre machine :

Haskell : Le langage utilisé pour le développement du projet 🖥️.
Stack : Un gestionnaire de projet et de dépendances Haskell 🛠️.
Make : Utilisé pour la gestion de la compilation du projet (via un fichier Makefile) ⚙️.

🚀 Installation

1️⃣ Cloner le projet

Clonez ce repository en utilisant la commande suivante :

$ git clone https://github.com/votre-utilisateur/sudoku-solver.git
$ cd sudoku-solver

2️⃣ Utilisation de Stack

Une fois que vous avez cloné le projet, vous devez installer les dépendances de Stack. Assurez-vous d'avoir Stack installé sur votre machine.

Installez les dépendances nécessaires avec Stack :

$ stack setup

3️⃣ Utilisation du Makefile

Le Makefile est également présent pour simplifier la compilation. Vous pouvez utiliser les commandes suivantes pour gérer le projet :

Pour compiler le projet :

$ make (or make re)

Pour exécuter le programme après compilation :

$ ./sudokuSolver test/veryDifficultGrid.txt

Pour nettoyer les fichiers générés lors de la compilation :

$ make clean

🔧 Fonctionnalités
Le Sudoku Solver propose les fonctionnalités suivantes :

✅ Vérification de la grille : Le programme vérifie si une grille est valide (pas de doublons dans les lignes, colonnes et carrés de 3x3).

🔄 Résolution de la grille : Le programme résout le Sudoku en utilisant une méthode de backtracking.

💻 Interface textuelle : Affichage des grilles de Sudoku dans la console, avec la grille avant et après

🧑‍💻 Structure du code

Le code est divisé en plusieurs modules :

GridChecker : Vérification de la validité des grilles (lignes, colonnes, carrés).
Parser : Récupération de la grille dans un fichier texte.
Solver : Résolution de la grille en utilisant un algorithme de backtracking.
Main : Interface principale qui permet de lire une grille de Sudoku, vérifier sa validité et trouver la solution.
Display : Affichage des grilles (lignes, colonnes, chiffres).

💡 Exemple d'exécution

Voici un exemple d'exécution dans la console avec une grille de Sudoku à résoudre :

$ make
$ ./sudokuSolver test/veryDifficultGrid.txt

🤝 Contributions

Si vous souhaitez contribuer à ce projet, vous pouvez soumettre des pull requests ou ouvrir des issues pour toute question ou suggestion d'amélioration.

📜 Licence

Ce projet est sous licence BSD 3-Clause. Voir le fichier LICENSE pour plus de détails.