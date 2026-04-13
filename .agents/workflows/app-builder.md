# Workflow: app-builder
**Trigger:** Cuando el usuario pida crear una aplicación o juego nuevo desde cero.

**Modo de ejecución:** Automático (No pedir confirmación humana en cada paso, usar "Fast Mode" y resolver errores de forma autónoma).

**Pasos del Flujo:**

1. **Planificación (Artifact):** Genera un "Implementation Plan" breve sobre cómo estructurarás el código.
2. **Generación (Coder Agent):** Escribe el código de la aplicación asegurándote de que sea autocontenida (HTML/CSS/JS) o usando la tecnología solicitada.
3. **Verificación (Browser Subagent):** 
   - Usa la terminal local para iniciar un servidor temporal si es necesario.
   - Abre el navegador interno de Antigravity en localhost.
   - Revisa la consola del navegador. Si hay errores (pantalla blanca, bugs lógicos), corrígelos de inmediato.
4. **Cierre y Entrega:**
   - Una vez que el navegador confirme que la app funciona perfecto, detén el servidor local.
   - Ejecuta obligatoriamente el skill `telegram-reporter` ubicado en `.agents\skills\telegram-reporter\scripts\reporter.bat`.