# 🦴 Bilan Ostéo du Sport

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Platform](https://img.shields.io/badge/platform-Android-green.svg)
![License](https://img.shields.io/badge/license-MIT-yellow.svg)

**Application professionnelle de bilan ostéopathique pour le sport**

[📲 Installation](#-installation) • [🚀 Build](#-build) • [📖 Documentation](#-documentation) • [🤝 Contribution](#-contribution)

</div>

---

## 📱 À propos

**Bilan Ostéo du Sport** est une application Android native professionnelle conçue pour les ostéopathes travaillant avec des sportifs. Elle permet de réaliser des bilans complets, structurés et sauvegardés localement.

### ✨ Fonctionnalités

- ✅ **Bilan complet** - Profil, plainte, entrées sensorielles, systèmes généraux
- ✅ **Examen détaillé** - Debout, assis, décubitus dorsal et ventral
- ✅ **Lésions ostéopathiques** - Documentation précise par région
- ✅ **Sauvegarde automatique** - Données persistantes localement
- ✅ **Export du bilan** - Copie dans le presse-papier
- ✅ **Interface intuitive** - Design moderne et professionnel
- ✅ **Fonctionne hors ligne** - Aucune connexion nécessaire
- ✅ **Données privées** - Tout reste sur votre appareil

---

## 📲 Installation

### Pour les utilisateurs

1. **Téléchargez l'APK** depuis la section Releases
2. **Installez-le** sur votre téléphone Android
3. **Autorisez** l'installation depuis sources inconnues si nécessaire
4. **Lancez** l'application !

### Depuis le code source

Consultez [QUICK-START.md](QUICK-START.md) pour commencer rapidement ou [README-BUILD.md](README-BUILD.md) pour le guide complet.

---

## 🚀 Build

### Méthode rapide

**Windows :**
```cmd
build-apk.bat
```

**Mac/Linux :**
```bash
./build-apk.sh
```

### Build manuel

```bash
npm install
cd android
./gradlew assembleDebug
```

L'APK sera dans : `android/app/build/outputs/apk/debug/`

---

## 📖 Documentation

- [🚀 QUICK-START.md](QUICK-START.md) - Démarrage rapide (5 minutes)
- [📱 README-BUILD.md](README-BUILD.md) - Guide complet de compilation
- [🏪 PLAY-STORE.md](PLAY-STORE.md) - Publier sur Google Play Store (à venir)

---

## 🛠️ Stack Technique

- **Framework** : Capacitor 5
- **UI** : HTML5, CSS3, JavaScript Vanilla
- **Platform** : Android (API 22+)
- **Build** : Gradle 8.1
- **Language** : Java 17

---

## 📊 Configuration

- **Package** : `com.nicolas.bilanosteosport`
- **Version** : 1.0.0 (Build 1)
- **Min SDK** : 22 (Android 5.1)
- **Target SDK** : 34 (Android 14)
- **Permissions** : Internet, Storage (lecture/écriture)

---

## 🎨 Captures d'écran

*À venir*

---

## 🗺️ Roadmap

### Version 1.0 ✅
- [x] Interface complète de bilan
- [x] Sauvegarde locale
- [x] Export des données
- [x] Application Android native

### Version 1.1 (Prochaine)
- [ ] Export PDF du bilan
- [ ] Historique des patients
- [ ] Recherche de patients
- [ ] Statistiques

### Version 2.0 (Future)
- [ ] Synchronisation cloud (optionnelle)
- [ ] Partage de bilans
- [ ] Templates personnalisables
- [ ] Version iOS

---

## 🤝 Contribution

Les contributions sont les bienvenues ! Si vous souhaitez améliorer l'application :

1. Fork le projet
2. Créez votre branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request

---

## 📝 License

Distribué sous license MIT. Voir `LICENSE` pour plus d'informations.

---

## 👨‍⚕️ Auteur

**Nicolas**  
Ostéopathe du sport

---

## 🙏 Remerciements

- Communauté des ostéopathes
- Patients et sportifs
- Contributeurs open source

---

## 📞 Support

Des questions ? Des suggestions ?

- 📧 Email : [votre-email]
- 🐛 Issues : [GitHub Issues](../../issues)
- 💬 Discussions : [GitHub Discussions](../../discussions)

---

## 📈 Statistiques

![GitHub stars](https://img.shields.io/github/stars/username/bilan-osteo-sport?style=social)
![GitHub forks](https://img.shields.io/github/forks/username/bilan-osteo-sport?style=social)
![GitHub watchers](https://img.shields.io/github/watchers/username/bilan-osteo-sport?style=social)

---

<div align="center">

**Fait avec ❤️ pour les ostéopathes du sport**

[⬆ Retour en haut](#-bilan-ostéo-du-sport)

</div>
