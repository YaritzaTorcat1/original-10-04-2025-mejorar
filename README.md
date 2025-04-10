# Archivos de Mikrotik

Repositorio que contiene archivos de configuración y recursos para router Mikrotik, especialmente enfocado en configuración de hotspot WiFi.

## Estructura del Repositorio

### Archivos de Backup
- `auto-before-reset.backup`: Backup automático generado antes de un reset del dispositivo

### Archivos de Configuración
- `restore-mikrotik-casa-yadira-starthotspot-y-wlan1-activado-antes-de-actvar-pppoe-al-16-09-2022.rsc`: Script de configuración para restaurar ajustes específicos del hotspot y WLAN1
- `autosupout.rif` y `autosupout.old.rif`: Archivos de soporte y diagnóstico del sistema

### Certificados SSL
El repositorio contiene múltiples certificados SSL para diferentes dominios utilizados en el hotspot:
- Certificados para login.wifihotspot.io
- Certificados para login.energiachina.com (varias fechas)
- Certificados para login.fliber.online
- Certificados para login.tuwifi.net (varias fechas)

Cada dominio incluye tanto el certificado principal (.pem) como el bundle de certificados de la CA (.ca-bundle.pem).

### Recursos de Hotspot
La carpeta `/hotspot` contiene todos los archivos necesarios para personalizar la página de login del hotspot:

#### Archivos HTML
- `alogin.html`: Página de login automático
- `login.html`: Página principal de login
- `logout.html`: Página de cierre de sesión
- `error.html`: Página de error
- `status.html`: Página de estado
- `redirect.html`: Página de redirección
- `rlogin.html`: Página de relogin
- `radvert.html`: Página de publicidad/anuncios

#### Recursos adicionales
- `api.json`: Configuración de API
- `errors.txt`: Mensajes de error
- `favicon.ico`: Icono del sitio
- `md5.js`: Script JavaScript para encriptación MD5

#### Estilos y Recursos Visuales
- Carpeta `css` con hojas de estilo
- Carpeta `img` con iconos SVG para usuario y contraseña

#### Recursos XML
Archivos XML para la configuración del gateway WiFi y comunicación WISP.

### Otras carpetas
- `/pub`: Archivos públicos
- `/skins`: Temas visuales
- `/user-manager`: Gestor de usuarios con base de datos SQL

## Uso

Estos archivos son utilizados para configurar y personalizar un hotspot WiFi en un router Mikrotik. Los certificados SSL proporcionan conexiones seguras para las páginas de login, y los archivos HTML/CSS/JS personalizan la experiencia de usuario del portal cautivo.

---
Última actualización: 10 de abril de 2025
