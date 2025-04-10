# original-10-04-2025-mejorar

Repositorio que contiene archivos de configuración y recursos para router Mikrotik, especialmente enfocado en configuración de hotspot WiFi.

## Estructura del Repositorio

```
autosupout.old.rif
autosupout.rif
flash/
	auto-before-reset.backup
	certificate-login_wifihotspot_io-bundle.pem
	certificate-login_wifihotspot_io-cert.pem
	login_energiachina_com_04_03_2025_pem.pem
	login_energiachina_com_04_03_2025-ca-bundle.pem
	login_energiachina_com_19_11_2024_pem.pem
	login_energiachina_com_19_11_2024.ca-bundle.pem
	login_energiachina_com_20_06_2025-ca-bundle.pem
	login_energiachina_com_20_06_2025.pem
	login_fliber_online.ca-bundle.pem
	login_fliber_online.pem
	login_tuwifi_net_02_02_2024_pem.pem
	login_tuwifi_net_02_02_2024.ca-bundle.pem
	login_tuwifi_net_14_12_2023_pem.pem
	login_tuwifi_net_14_12_2023.ca-bundle.pem
	login_tuwifi_net_19_11_2024_pem.pem
	login_tuwifi_net_19_11_2024.ca-bundle.pem
	login_tuwifi_net_21_05_2024_pem.pem
	login_tuwifi_net_21_05_2024.ca-bundle.pem
	login_tuwifi_net_21_08_2024_pem.pem
	login_tuwifi_net_21_08_2024.ca-bundle.pem
	login_tuwifi_net_pem.pem
	login_tuwifi_net.ca-bundle.pem
	restore-mikrotik-casa-yadira-starthotspot-y-wlan1-activado-antes-de-actvar-pppoe-al-16-09-2022.rsc
	hotspot/
		alogin.html
		api.json
		error.html
		errors.txt
		favicon.ico
		login.html
		logout.html
		md5.js
		radvert.html
		redirect.html
		rlogin.html
		status.html
		css/
			style.css
		img/
			password.svg
			user.svg
		xml/
			alogin.html
			error.html
			flogout.html
			login.html
			logout.html
			rlogin.html
			WISPAccessGatewayParam.xsd
	pub/
	skins/
	user-manager/
		login.html
		logsqldb
		sqldb
```

## Descripción

Este repositorio contiene la configuración completa para un router Mikrotik con una configuración de hotspot WiFi personalizada. Incluye:

1. **Archivos de backup y configuración del sistema**
   - Backups automáticos
   - Scripts de restauración
   - Archivos de soporte y diagnóstico

2. **Certificados SSL**
   - Certificados para varios dominios utilizados en el hotspot
   - Archivos .pem y .ca-bundle para cada dominio

3. **Recursos del hotspot**
   - Páginas HTML personalizadas para login, logout, errores, etc.
   - Recursos CSS y JavaScript
   - Imágenes e iconos
   - Configuraciones XML

4. **Administración de usuarios**
   - Interfaz de login para administración
   - Base de datos SQL para gestión de usuarios

---
Última actualización: 10 de abril de 2025