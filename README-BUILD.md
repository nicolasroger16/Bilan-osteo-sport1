# 📱 Bilan Ostéo du Sport - Application Android

## 🎯 Application Android Native

Version : **1.0.0**  
Package : `com.nicolas.bilanosteosport`  
Nom : **Bilan Ostéo du Sport**

---

## 🚀 MÉTHODE 1 : Compilation sur votre ordinateur (Recommandée)

### ✅ Prérequis

1. **Java JDK 17** - [Télécharger ici](https://adoptium.net/)
2. **Android Studio** - [Télécharger ici](https://developer.android.com/studio)
3. **Node.js** (version 16+) - [Télécharger ici](https://nodejs.org/)

### 📦 Installation

#### Étape 1 : Installer Android Studio
1. Téléchargez et installez Android Studio
2. Ouvrez Android Studio
3. Allez dans `Tools` → `SDK Manager`
4. Dans `SDK Platforms`, installez :
   - ✅ Android 14.0 (API 34)
   - ✅ Android 13.0 (API 33)
5. Dans `SDK Tools`, installez :
   - ✅ Android SDK Build-Tools
   - ✅ Android SDK Command-line Tools
   - ✅ Android Emulator
   - ✅ Android SDK Platform-Tools

#### Étape 2 : Configurer les variables d'environnement

**Windows :**
```cmd
setx ANDROID_HOME "%LOCALAPPDATA%\Android\Sdk"
setx PATH "%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools;%LOCALAPPDATA%\Android\Sdk\tools\bin"
```

**Mac/Linux :**
```bash
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
```

#### Étape 3 : Installer les dépendances
```bash
cd bilan-osteo-sport
npm install
npm install @capacitor/core @capacitor/cli @capacitor/android
```

#### Étape 4 : Compiler l'APK

**Option A : APK Debug (pour test)**
```bash
cd android
./gradlew assembleDebug
```
📦 L'APK sera dans : `android/app/build/outputs/apk/debug/app-debug.apk`

**Option B : APK Release (pour distribution)**
```bash
cd android
./gradlew assembleRelease
```
📦 L'APK sera dans : `android/app/build/outputs/apk/release/app-release-unsigned.apk`

---

## 🌐 MÉTHODE 2 : Build en ligne (Plus simple - Aucune installation)

### Utiliser un service de build en ligne

#### Option 1 : Appetize.io (gratuit, sans inscription)
1. Allez sur https://appetize.io/
2. Uploadez le dossier android complet
3. Build automatique et test en ligne

#### Option 2 : GitHub Actions (gratuit avec GitHub)
J'ai créé un workflow automatique :

1. **Créez un compte GitHub** (gratuit)
2. **Créez un nouveau repository**
3. **Uploadez tous les fichiers** du projet
4. **Le build se fera automatiquement** via GitHub Actions
5. **Téléchargez l'APK** depuis les Artifacts

Le fichier `.github/workflows/build-android.yml` est déjà inclus !

---

## 📲 MÉTHODE 3 : Utiliser un service de build Android

### Ionic AppFlow (Recommandé - Le plus simple)
1. Créez un compte sur https://ionic.io/appflow
2. Connectez votre projet
3. Cliquez sur "Build" → "Android"
4. Téléchargez l'APK généré

### Codemagic (Alternative gratuite)
1. Allez sur https://codemagic.io/
2. Connectez votre repository Git
3. Lancez le build Android
4. Téléchargez l'APK

---

## 🔐 Signer l'APK (Pour production)

### Créer une keystore
```bash
keytool -genkey -v -keystore bilan-osteo.keystore -alias bilan-osteo -keyalg RSA -keysize 2048 -validity 10000
```

### Configurer la signature
Éditez `android/app/build.gradle` :
```gradle
android {
    ...
    signingConfigs {
        release {
            storeFile file("bilan-osteo.keystore")
            storePassword "votre_mot_de_passe"
            keyAlias "bilan-osteo"
            keyPassword "votre_mot_de_passe"
        }
    }
    buildTypes {
        release {
            signingConfig signingConfigs.release
            minifyEnabled true
            shrinkResources true
        }
    }
}
```

### Compiler l'APK signé
```bash
cd android
./gradlew assembleRelease
```

---

## 📲 Installer l'APK sur Android

### Sur votre téléphone :
1. Copiez le fichier `app-debug.apk` sur votre téléphone
2. Ouvrez-le avec un gestionnaire de fichiers
3. Autorisez l'installation depuis sources inconnues
4. Installez l'application
5. Lancez **Bilan Ostéo du Sport** ! 🎉

### Via ADB (Android Debug Bridge) :
```bash
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

---

## 🏪 Publier sur Google Play Store

### Prérequis
- Compte Google Play Developer (25€ une fois)
- APK signé
- Screenshots de l'app
- Description et icônes

### Étapes
1. Allez sur https://play.google.com/console
2. Créez une nouvelle application
3. Remplissez les informations
4. Uploadez l'APK signé
5. Créez une release
6. Soumettez pour review

**Délai de review :** 1-7 jours

---

## 🐛 Dépannage

### Erreur "SDK not found"
```bash
# Vérifiez ANDROID_HOME
echo $ANDROID_HOME  # Mac/Linux
echo %ANDROID_HOME%  # Windows
```

### Erreur "Gradle build failed"
```bash
cd android
./gradlew clean
./gradlew assembleDebug
```

### Erreur "Permission denied"
```bash
chmod +x android/gradlew
```

### L'app crash au démarrage
- Vérifiez que tous les fichiers HTML/JS/CSS sont dans `www/`
- Vérifiez les permissions dans AndroidManifest.xml
- Regardez les logs : `adb logcat`

---

## 📁 Structure du projet

```
bilan-osteo-sport/
├── android/                    # Projet Android natif
│   ├── app/
│   │   ├── src/
│   │   │   └── main/
│   │   │       ├── java/      # Code Java
│   │   │       ├── res/       # Ressources (icônes, couleurs)
│   │   │       └── AndroidManifest.xml
│   │   └── build.gradle
│   ├── build.gradle
│   └── settings.gradle
├── www/                        # Fichiers web de l'app
│   ├── index.html
│   ├── icon-192.png
│   └── icon-512.png
├── capacitor.config.json       # Config Capacitor
└── package.json
```

---

## 🎨 Personnalisation

### Changer l'icône
Remplacez les images dans :
```
android/app/src/main/res/mipmap-*/ic_launcher.png
```

### Changer les couleurs
Éditez :
```
android/app/src/main/res/values/colors.xml
```

### Changer le nom de l'app
Éditez :
```
android/app/src/main/res/values/strings.xml
```

---

## 📊 Taille de l'APK

- **Debug APK :** ~10-15 MB
- **Release APK (optimisé) :** ~5-8 MB
- **Android App Bundle (.aab) :** ~4-6 MB (recommandé pour Play Store)

---

## 🔄 Mettre à jour l'application

1. Modifiez le code dans `www/`
2. Incrémentez la version dans `android/app/build.gradle` :
```gradle
versionCode 2
versionName "1.1"
```
3. Recompilez l'APK
4. Redistribuez ou republiez sur Play Store

---

## ✅ Checklist avant publication

- [ ] APK signé avec une keystore de production
- [ ] Icône de l'app créée (512x512)
- [ ] Screenshots prêts (téléphone + tablette)
- [ ] Description en français complète
- [ ] Politique de confidentialité rédigée
- [ ] Catégorie : Santé et Fitness
- [ ] Classification du contenu complétée
- [ ] Prix : Gratuit ✓

---

## 🎯 Prochaines étapes suggérées

1. ✅ Compiler l'APK Debug et tester
2. ✅ Installer sur votre téléphone
3. ✅ Tester toutes les fonctionnalités
4. ✅ Compiler l'APK Release signé
5. ✅ Partager avec quelques collègues pour beta test
6. ✅ Publier sur Google Play Store

---

## 💡 Conseils

- Commencez par compiler l'**APK Debug** pour tester
- Utilisez **GitHub Actions** si vous n'avez pas Android Studio
- Testez l'app sur plusieurs appareils Android
- Gardez votre **keystore** en sécurité (sauvegarde !)

---

## 📞 Support

Si vous avez des questions :
- Consultez la doc Capacitor : https://capacitorjs.com/docs/android
- Consultez la doc Android : https://developer.android.com/

---

**Bon build ! 🚀📱**

---

*Application créée avec ❤️ pour les ostéopathes du sport*
