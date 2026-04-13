@echo off
set GITHUB_USER=nsanchezBG
set REPO_NAME=%1

if "%REPO_NAME%"=="" (
    echo [ERROR] Falta el nombre del repositorio.
    exit /b 1
)

echo 🤖 Inicializando repositorio Git local...
git init
git add .
git commit -m "Initial commit by Antigravity Agent"

echo 🌐 Creando repositorio remoto en GitHub.com...
gh repo create %REPO_NAME% --public --source=. --remote=origin
git push -u origin main

echo 🚀 Configurando GitHub Pages para desplegar desde la rama 'main'...
:: Este es el comando clave que activa el despliegue directo desde la rama
gh api -X POST "repos/%GITHUB_USER%/%REPO_NAME%/pages" -f source[branch]=main -f source[path]="/"

echo.
echo ✨ ¡Despliegue configurado! Tu pagina estara en vivo en 1-2 minutos en:
echo https://%GITHUB_USER%.github.io/%REPO_NAME%/