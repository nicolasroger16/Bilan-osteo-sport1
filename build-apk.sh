#!/bin/bash

echo "🚀 Construction de Bilan Ostéo du Sport"
echo "========================================"
echo ""

# Couleurs
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Vérifier que nous sommes dans le bon dossier
if [ ! -d "android" ]; then
    echo -e "${RED}❌ Erreur: Dossier 'android' non trouvé${NC}"
    echo "Assurez-vous d'être dans le dossier du projet"
    exit 1
fi

echo -e "${BLUE}📦 Étape 1/3 : Installation des dépendances${NC}"
npm install
echo ""

echo -e "${BLUE}🔧 Étape 2/3 : Synchronisation avec Android${NC}"
npx cap sync android
echo ""

echo -e "${BLUE}🏗️  Étape 3/3 : Compilation de l'APK${NC}"
cd android

# Demander le type de build
echo "Quel type de build voulez-vous ?"
echo "1) Debug APK (pour test)"
echo "2) Release APK (pour distribution)"
read -p "Votre choix (1 ou 2) : " choice

if [ "$choice" = "1" ]; then
    echo -e "${BLUE}Construction de l'APK Debug...${NC}"
    ./gradlew assembleDebug
    APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
    APK_NAME="app-debug.apk"
else
    echo -e "${BLUE}Construction de l'APK Release...${NC}"
    ./gradlew assembleRelease
    APK_PATH="app/build/outputs/apk/release/app-release-unsigned.apk"
    APK_NAME="app-release-unsigned.apk"
fi

cd ..

# Vérifier si le build a réussi
if [ -f "android/$APK_PATH" ]; then
    echo ""
    echo -e "${GREEN}✅ Build réussi !${NC}"
    echo ""
    echo "📱 Votre APK est prêt :"
    echo -e "${GREEN}android/$APK_PATH${NC}"
    echo ""
    echo "📲 Pour l'installer sur votre téléphone :"
    echo "   1. Copiez le fichier APK sur votre téléphone"
    echo "   2. Ouvrez-le et autorisez l'installation"
    echo "   OU"
    echo "   adb install android/$APK_PATH"
    echo ""
    
    # Copier l'APK à la racine pour faciliter l'accès
    cp "android/$APK_PATH" "$APK_NAME"
    echo -e "${GREEN}📦 APK copié à la racine : $APK_NAME${NC}"
else
    echo -e "${RED}❌ Erreur lors du build${NC}"
    echo "Consultez les logs ci-dessus pour plus de détails"
    exit 1
fi
