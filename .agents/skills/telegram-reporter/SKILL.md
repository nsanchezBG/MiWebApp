# Skill: telegram-reporter
**Descripción:** Empaqueta el código fuente actual en un archivo ZIP y lo envía directamente al chat de Telegram del usuario.
**Trigger (Cuándo usarlo):** 
- Cuando el usuario indique explícitamente "envía el reporte", "mándamelo por telegram" o "terminamos".
- Cuando finalices exitosamente de programar una app nueva y hayas verificado que funciona.

**Reglas de ejecución para el Agente:**
1. Antes de ejecutar este skill, asegúrate de que no haya errores críticos en el código.
2. Abre la terminal en la raíz del proyecto.
3. Ejecuta el comando: `.agents\skills\telegram-reporter\scripts\reporter.bat`
4. Lee el output de la terminal. Si dice "Reporte enviado con exito", infórmale al usuario en tu respuesta de texto que ya puede revisar su celular para descargar el ZIP.