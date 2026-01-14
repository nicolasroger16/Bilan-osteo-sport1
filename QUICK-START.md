# 🚀 DÉMARRAGE RAPIDE - Bilan Ostéo du Sport

## ⚡ La méthode la PLUS SIMPLE (5 minutes)

### Option 1 : Build en ligne avec GitHub (AUCUNE INSTALLATION)

1. **Créez un compte GitHub** → https://github.com/join
2. **Créez un nouveau repository** → Cliquez sur "New"
3. **Uploadez TOUS les fichiers** du projet
4. Allez dans **Actions** → Le build démarre automatiquement
5. Après 5-10 minutes, téléchargez l'APK dans **Artifacts**
6. **C'est tout !** 🎉

---

## 💻 Méthode avec votre ordinateur

### Si vous avez Windows :

1. Installez **Android Studio** → https://developer.android.com/studio
2. Installez **Node.js** → https://nodejs.org/
3. Double-cliquez sur **`build-apk.bat`**
4. Choisissez "1" pour Debug
5. Attendez 5-10 minutes
6. Récupérez **`app-debug.apk`** à la racine !

### Si vous avez Mac/Linux :

1. Installez **Android Studio** → https://developer.android.com/studio
2. Installez **Node.js** → https://nodejs.org/
3. Dans le terminal :
```bash
./build-apk.sh
```
4. Choisissez "1" pour Debug
5. Attendez 5-10 minutes
6. Récupérez **`app-debug.apk`** à la racine !

---

## 📲 Installer l'APK sur votre téléphone

### Méthode 1 : Copier le fichier
1. Branchez votre téléphone à l'ordinateur
2. Copiez **`app-debug.apk`** sur votre téléphone
3. Sur le téléphone, ouvrez le fichier APK
4. Autorisez l'installation (Sources inconnues)
5. Installez !

### Méthode 2 : Via câble USB (ADB)
```bash
adb install app-debug.apk
```

---

## ❓ Problèmes courants

### "Je n'ai pas Android Studio"
→ Utilisez **GitHub Actions** (Option 1 ci-dessus)

### "Le build prend trop de temps"
→ C'est normal la première fois (10-15 min)
→ Les builds suivants seront plus rapides (2-3 min)

### "Erreur pendant le build"
→ Assurez-vous d'avoir installé JDK 17
→ Redémarrez votre ordinateur
→ Essayez à nouveau

### "Je ne peux pas installer l'APK"
→ Allez dans Paramètres → Sécurité
→ Activez "Sources inconnues"
→ Réessayez

---

## 📦 Fichiers importants

- **`app-debug.apk`** → L'application à installer (après build)
- **`build-apk.bat`** → Script Windows pour compiler
- **`build-apk.sh`** → Script Mac/Linux pour compiler
- **`README-BUILD.md`** → Guide complet détaillé

---

## 🎯 Checklist

- [ ] Android Studio installé
- [ ] Node.js installé
- [ ] Script de build lancé
- [ ] APK généré
- [ ] APK installé sur le téléphone
- [ ] Application testée ✅

---

## 🚀 Pour aller plus loin

Consultez **`README-BUILD.md`** pour :
- Signer l'APK pour production
- Publier sur Google Play Store
- Personnaliser l'application
- Build automatisé

---

**C'est parti ! 🦴✨**
