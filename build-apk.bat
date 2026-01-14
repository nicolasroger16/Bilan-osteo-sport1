@echo off
echo ========================================
echo  Construction de Bilan Osteo du Sport
echo ========================================
echo.

if not exist "android" (
    echo Erreur: Dossier 'android' non trouve
    echo Assurez-vous d'etre dans le dossier du projet
    pause
    exit /b 1
)

echo [1/3] Installation des dependances...
call npm install
echo.

echo [2/3] Synchronisation avec Android...
call npx cap sync android
echo.

echo [3/3] Compilation de l'APK...
echo.
echo Quel type de build voulez-vous ?
echo 1) Debug APK (pour test)
echo 2) Release APK (pour distribution)
set /p choice="Votre choix (1 ou 2) : "

cd android

if "%choice%"=="1" (
    echo Construction de l'APK Debug...
    call gradlew assembleDebug
    set "APK_PATH=app\build\outputs\apk\debug\app-debug.apk"
    set "APK_NAME=app-debug.apk"
) else (
    echo Construction de l'APK Release...
    call gradlew assembleRelease
    set "APK_PATH=app\build\outputs\apk\release\app-release-unsigned.apk"
    set "APK_NAME=app-release-unsigned.apk"
)

cd ..

if exist "android\%APK_PATH%" (
    echo.
    echo ========================================
    echo  Build reussi !
    echo ========================================
    echo.
    echo Votre APK est pret :
    echo android\%APK_PATH%
    echo.
    echo Pour l'installer sur votre telephone :
    echo   1. Copiez le fichier APK sur votre telephone
    echo   2. Ouvrez-le et autorisez l'installation
    echo   OU
    echo   adb install android\%APK_PATH%
    echo.
    
    copy "android\%APK_PATH%" "%APK_NAME%"
    echo APK copie a la racine : %APK_NAME%
) else (
    echo.
    echo Erreur lors du build
    echo Consultez les logs ci-dessus pour plus de details
    pause
    exit /b 1
)

echo.
pause
