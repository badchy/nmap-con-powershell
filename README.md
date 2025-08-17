# Escaneo de Puertos con PowerShell

## 🛡️ Descripción

Este es un **script de PowerShell** para el **escaneo de puertos TCP**. Diseñado para administradores de sistemas, ingenieros de redes y profesionales de la seguridad, facilita la verificación de la conectividad y el estado de los puertos en uno o varios hosts. Es una herramienta ligera y eficiente para auditorías rápidas de red y solución de problemas.

## ✨ Características

* **Configura tu objetivo**: En la variable `$host` puedes ingresar una URL o IP que deseas auditar.
* **Puertos configurable**: El archivo `puertos.txt` contiene el top20 de puertos más vulnerables, pero puedes modificarlo a necesidad.
* **Detección de puertos abiertos, cerrados o filtrados**: Identifica claramente el estado de cada puerto para un análisis preciso.
* **Reporte detallado**: Genera una salida en consola fácil de leer con información relevante sobre cada escaneo.
* **Sin dependencias externas**: Funciona con PowerShell de forma nativa.
* **Optimización de rendimiento**: El script esta diseñado para que tener el resultado lo antes posible usando todo el poder de tu PC y con procesos en paralelos.

## 🚀 Uso

### Requisitos

* **PowerShell 5.1** o superior (viene preinstalado en la mayoría de los sistemas operativos Windows modernos).

### Cómo ejecutar el script

1.  Descarga el archivo `nmap with powershell.ps1`.
2.  Recomiendo abrir Windows PowerShell ISE y pegar el contenido del ps1 en un nuevo documento para evitar problemas por ejecutar archivos descargados de internet
3.  No olvides de definir el path del archivo `puertos.txt` en una ruta correcta.
4.  Ejecuta el script utilizando uno de los siguientes ejemplos.
5.  Enjoy!

## ⭐ Califica

Si te sirvió, no olvides dejar tu estrella al proyecto en la parte superior derecha. ¡Gracias!
