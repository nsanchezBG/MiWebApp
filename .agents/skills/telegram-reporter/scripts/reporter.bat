
set PROJECT_NAME=app-generada.zip

echo 📦 Empaquetando el proyecto...
tar.exe -a -c -f %PROJECT_NAME% --exclude=node_modules --exclude=.agents --exclude=.git *

echo 🚀 Enviando archivo a Telegram...
curl.exe -s -F chat_id="%CHAT_ID%" -F document=@"%PROJECT_NAME%" -F caption="✅ Mision cumplida. Aqui tienes el codigo fuente de tu app." https://api.telegram.org/bot%BOT_TOKEN%/sendDocument

echo.
echo 🧹 Limpiando archivos temporales...
del %PROJECT_NAME%
echo ✨ Reporte enviado con exito.
