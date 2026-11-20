# CV Flutter — Fleurette

Application mobile de présentation personnelle, réalisée avec Flutter. Elle
propose une connexion, un CV, une page famille et une page de contact dans une
interface sombre aux tons terre cuite.

## Lancer le projet

```bash
flutter pub get
flutter run
```

## Connexion de démonstration

- Identifiant : `demo`
- Mot de passe : `1234`

Ces valeurs sont uniquement prévues pour la démonstration du TP. Modifiez-les
dans [`lib/data/app_data.dart`](lib/data/app_data.dart).

## Personnaliser les informations

Remplacez les exemples de nom, profil, formation, expériences, compétences,
langues, centres d’intérêt, famille et coordonnées dans
[`lib/data/app_data.dart`](lib/data/app_data.dart). Les champs `profilePhotoUrl`
et `photoUrl` acceptent l’URL d’une image ; laissez-les vides pour afficher les
initiales.

## Captures d’écran

Avant de remettre le TP, ajoutez des captures réelles de l’application dans
`screenshots/`, puis insérez-les ici. Il faut au minimum une capture pour la
connexion, l’accueil / CV, la famille et le contact.
