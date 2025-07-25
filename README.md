# Mon Appli Pratique (Application Flutter)

Une application Flutter de démonstration polyvalente et entièrement personnalisée. Cette application intègre plusieurs fonctionnalités clés pour illustrer des concepts de développement Flutter, incluant la navigation à travers un tiroir latéral, la gestion d'état pour un compteur interactif, et la récupération de données depuis une API externe. Le tout est présenté avec un design moderne et une interface entièrement en français.

---

##  Fonctionnalités

* **Navigation par Tiroir Latéral :** Accédez facilement aux différentes sections de l'application (Accueil, Compteur, Récupération de Données) via un tiroir de navigation stylisé.
* **Page d'Accueil :** Un écran de bienvenue présentant une introduction à l'application et à ses objectifs.
* **Compteur Interactif :** Une page dédiée à un compteur simple avec des boutons pour incrémenter et décrémenter la valeur.
* **Récupération de Données API :** Une section qui affiche dynamiquement des données (produits) récupérées depuis l'API externe [DummyJSON.com](https://dummyjson.com/).
* **Gestion d'État :** Démonstration de la gestion d'état pour le compteur et les données récupérées.
* **Design Personnalisé :** Application d'un thème de couleurs cohérent (Violet Profond et Turquoise) et d'une typographie moderne (Poppins) pour une esthétique soignée.
* **Localisation Complète :** L'interface utilisateur et tous les messages sont entièrement traduits en français pour une expérience utilisateur native.

---

##  Design et Style Personnalisés

L'application a été entièrement repensée avec un thème **Violet Profond** (`DeepPurple`) et **Turquoise** (`Teal`) pour une esthétique moderne et cohérente.

* **Palette de Couleurs :**
    * Primaire : `Colors.deepPurple[700]`
    * Secondaire (Accent) : `Colors.teal[400]`
    * Tertiaire (Accent Supplémentaire) : `Colors.blueAccent[400]`
    * Arrière-plan Général : `Colors.grey[50]` (très clair)
* **Typographie :** La police **Poppins** est utilisée pour l'ensemble de l'application, offrant une lisibilité claire et un look contemporain.
* **Composants UI :**
    * Les barres d'applications, les en-têtes de tiroir, les boutons flottants (FABs) et les boutons standard reflètent la palette de couleurs choisie.
    * Les cartes (Cards) et les éléments de liste (ListTiles) ont des styles et des ombres subtiles pour une meilleure distinction.

---

##  Captures d'Écran

Voici quelques aperçus de l'application personnalisée sur un simulateur iOS (ou émulateur Android) :

### 1. Page d'Accueil

L'écran principal de l'application avec le nouveau thème.

<img width="1290" height="2796" alt="accueil" src="https://github.com/user-attachments/assets/a1416964-067d-43b8-a27a-2178809382f0" />


### 2. Tiroir de Navigation Latéral

Le menu latéral permettant de naviguer entre les différentes pages de l'application.

<img width="1290" height="2796" alt="Drawer" src="https://github.com/user-attachments/assets/9eba6d4c-9447-40ee-b45f-d5fd897763a7" />


### 3. Page Compteur

La page de démonstration du compteur avec ses boutons d'interaction.

<img width="1290" height="2796" alt="Compteur" src="https://github.com/user-attachments/assets/2a6f8af5-cdff-4076-8ce6-224c7e871f08" />


### 4. Page de Récupération de Données

La page affichant les données récupérées depuis l'API externe (DummyJSON.com).

<img width="1290" height="2796" alt="fetch" src="https://github.com/user-attachments/assets/d82ec252-f051-47ed-b1f9-2ffb8f79554b" />


---

##  Technologies Utilisées

* **Framework :** Flutter
* **Langage :** Dart
* **IDE :** VS Code / Android Studio
* **Gestion des Dépendances :** Pub (via `pubspec.yaml`)
* **Requêtes HTTP :** `package:http`
* **Polices Personnalisées :** `package:google_fonts`
* **API Externe :** DummyJSON.com (pour les données de produits)
* **Système de Build Natif :** Gradle (pour Android), Xcode (pour iOS)

---

##  Configuration et Installation

Pour configurer et exécuter ce projet localement :

1.  **Cloner le dépôt :**
    ```bash
    git clone [https://github.com/YOUR_GITHUB_USERNAME/mon-appli-pratique-flutter.git](https://github.com/YOUR_GITHUB_USERNAME/mon-appli-pratique-flutter.git) # Remplacez par l'URL réelle de votre dépôt
    ```

2.  **Naviguer vers le répertoire du projet :**
    ```bash
    cd coure4_flutter_pratique # Ou le nom de votre dossier de projet
    ```

3.  **Installer les dépendances Flutter :**
    ```bash
    flutter pub get
    ```

4.  **Configurer le chemin du SDK Android (si vous rencontrez des problèmes Android) :**
    * Créez un fichier `local.properties` à la racine du projet.
    * Ajoutez : `sdk.dir=/Users/YOUR_USERNAME/Library/Android/sdk` (remplacez YOUR_USERNAME).

5.  **Exécuter l'application sur un émulateur / simulateur ou un appareil physique :**
    * **Pré-requis :** Assurez-vous d'avoir un émulateur Android en cours d'exécution, ou un simulateur iOS lancé (via Xcode > Open Developer Tool > Simulator), ou un appareil physique connecté et reconnu par `flutter devices`.
    * **Dans le terminal (au niveau de la racine du projet) :**
        ```bash
        flutter run
        ```
        L'application sera construite et lancée sur votre appareil cible.

---

##  Utilisation de l'Application

* **Navigation :** Ouvrez le tiroir de navigation en faisant glisser votre doigt depuis le bord gauche de l'écran ou en appuyant sur l'icône du menu (hamburger) dans la barre d'applications. Sélectionnez une page ("Accueil", "Compteur", "Récupération de Données") pour y naviguer.
* **Compteur :** Sur la page "Compteur", utilisez les boutons `+` et `-` pour modifier la valeur du compteur.
* **Récupération de Données :** La page "Récupération de Données" chargera automatiquement une liste de produits au démarrage. Vous pouvez appuyer sur l'icône d'actualisation dans la barre d'applications pour recharger les données.

