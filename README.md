# Recipe Explorer

Application Flutter multi-écrans sur le thème des recettes, construite avec
Flutter et GoRouter.

## Fonctionnalités

- 5 écrans : accueil, liste, détail, formulaire et paramètres.
- Navigation par routes nommées avec passage de l'identifiant d'une recette.
- Recherche et filtrage dans une grille responsive : 1 colonne sur mobile,
	2 sur tablette et 3 sur grand écran.
- Formulaire avec validation de trois champs : nom, email et mot de passe.
- Thème clair/sombre commutable depuis l'écran Paramètres.
- Données séparées de l'interface dans `lib/data/items.dart`.
- Widgets réutilisables dans `lib/widgets/` : `CustomButton`, `CustomCard` et
	`SearchBarWidget`.

## Captures d'écran

Ajouter dans `docs/screenshots/` les captures suivantes avant la remise finale :

- `home.png` : écran d'accueil.
- `recipes.png` : liste avec recherche et filtrage.
- `settings-dark.png` : paramètres avec le thème sombre activé.
- `form.png` : formulaire et validation.

Pour les créer, lancer `flutter run -d edge`, ouvrir chaque écran dans Edge,
puis enregistrer les images dans `docs/screenshots/` avec ces noms.

## Lancer le projet

Prérequis : Flutter installé et un appareil ou navigateur disponible.

```bash
flutter pub get
flutter run
```

Pour vérifier le projet :

```bash
flutter analyze
flutter test
flutter build web
```

## Structure

```text
lib/
	data/       # Données de recettes
	models/     # Modèles métier
	screens/    # Écrans et navigation utilisateur
	theme/      # Thèmes clair et sombre
	widgets/    # Composants réutilisables
docs/
	screenshots/ # Captures d'écran à ajouter avant la remise
```

## Livraison

Le dépôt GitHub public contient le code source, ce README, les captures
d'écran et les instructions de lancement et de vérification.
