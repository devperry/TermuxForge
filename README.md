# Minecraft Forge 1.8.9 desde Android (Termux)

Esta guía te permitirá desarrollar y compilar mods para **Minecraft Forge 1.8.9** directamente desde tu dispositivo Android utilizando **Termux**.

---

# Requisitos

Antes de comenzar, instala las siguientes aplicaciones.

## 1. Termux (Obligatorio)

> **No descargues Termux desde Google Play.**
>
> La versión de Google Play está desactualizada y ya no recibe mantenimiento.

Descárgalo desde F-Droid:

https://f-droid.org/packages/com.termux/

---

## 2. MT Manager (Recomendado)

Lo utilizaremos para editar el código fuente, recursos e imágenes del mod.

https://mt2.cn/

---

## 3. ZArchiver

Necesario para extraer archivos ZIP y administrar carpetas fácilmente.

https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver

---

# Instalación

Abre **Termux** y ejecuta:

```bash
termux-setup-storage
```

Acepta el permiso de almacenamiento cuando Android lo solicite.

---

Instala Git:

```bash
pkg install git -y
```

Clona este repositorio:

```bash
git clone https://github.com/TU_USUARIO/TU_REPOSITORIO.git
```

Entra al repositorio:

```bash
cd TU_REPOSITORIO
```

Dale permisos de ejecución al instalador:

```bash
chmod +x setup.sh
```

Ejecútalo:

```bash
./setup.sh
```

Este script realizará automáticamente lo siguiente:

- Actualizará los paquetes de Termux.
- Instalará **proot-distro**.
- Instalará **Alpine Linux**.
- Instalará **OpenJDK 8** dentro de Alpine.

Cuando termine verás un mensaje indicando que la instalación fue completada.

---

# Ingresar al entorno de desarrollo

Cada vez que quieras trabajar en tus mods ejecuta:

```bash
proot-distro login alpine
```

Ahora estarás dentro de Alpine Linux con Java 8 listo para usarse.

---

# Estructura del repositorio

```
README.md
setup.sh
simple mod 1.8.9 test/
```

La carpeta:

```
simple mod 1.8.9 test/
```

contiene un ejemplo completamente funcional de un mod para Forge 1.8.9.

Puedes copiar esta carpeta para comenzar cualquier proyecto nuevo.

---

# Editar el código

Se recomienda utilizar **MT Manager** para modificar el proyecto.

Con MT Manager podrás:

- Editar archivos Java.
- Editar texturas.
- Editar archivos JSON.
- Renombrar paquetes.
- Administrar fácilmente todos los archivos del proyecto.

---

# Compilar el mod

Después de ingresar a Alpine:

```bash
cd /storage/emulated/0/TU_REPOSITORIO/simple\ mod\ 1.8.9\ test
```

Compila el proyecto ejecutando:

```bash
./gradlew build
```

Si todo salió correctamente, el archivo compilado estará en:

```
build/libs/
```

---

# Notas

- Este entorno utiliza **OpenJDK 8**, ya que Forge 1.8.9 depende de esta versión.
- La primera compilación puede tardar varios minutos porque Gradle descargará todas las dependencias necesarias.
- Es necesario tener conexión a Internet durante la primera compilación.

---

# ¡Eso es todo!

Ahora ya tienes un entorno completamente funcional para desarrollar mods de Minecraft Forge 1.8.9 directamente desde Android.

Si este repositorio te fue útil, considera dejar una ⭐ en GitHub.
