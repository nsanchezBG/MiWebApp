# Skill: github-deployer
**Descripción:** Sube el código a un nuevo repositorio de GitHub y lo despliega usando GitHub Pages.
**Trigger:** Cuando el usuario pide "desplegar", "subir a github" o "publicar la web".

**Reglas de ejecución para el Agente:**
1.  Pide al usuario un nombre para el nuevo repositorio (debe ser único y sin espacios, ej: "calculadora-2026").
2.  Abre la terminal en la raíz del proyecto.
3.  Ejecuta el script de despliegue pasándole el nombre del repositorio como argumento. Ejemplo: `.agents\skills\github-deployer\scripts\deploy.bat nombre-del-repo`
4.  Informa al usuario que la URL estará lista en unos minutos y proporciónale el enlace al repositorio de GitHub.