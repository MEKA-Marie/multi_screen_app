# Recipe Explorer

Application Flutter multi-ecrans de recettes, construite avec GoRouter.

## Fonctionnalites

- 5 ecrans : accueil, liste, detail, formulaire et parametres.
- Navigation par routes nommees avec passage de l'identifiant d'une recette.
- Recherche et filtrage dans une grille responsive : 1 colonne sur mobile, 3 sur tablette.
- Formulaire valide avec trois champs : nom, email et mot de passe.
- Theme clair/sombre commutable depuis l'ecran Parametres.
- Donnees separees de l'interface dans `lib/data/items.dart`.
- Widgets reutilisables dans `lib/widgets/` : `CustomButton`, `CustomCard` et `SearchBarWidget`.

## Lancer le projet

Prerequis : Flutter installe et un appareil ou navigateur disponible.

```bash
flutter pub get
flutter run
```

Pour verifier le projet :

```bash
flutter analyze
flutter test
flutter build web
```

## Structure

```text
lib/
	data/       # Donnees de recettes
	models/     # Modeles metier
	screens/    # Ecrans et navigation utilisateur
	theme/      # Themes clair et sombre
	widgets/    # Composants reutilisables
```

## Livraison

Le depot GitHub public doit contenir ce README, les captures d'ecran de l'accueil,
de la liste et des parametres, ainsi que les instructions ci-dessus.
