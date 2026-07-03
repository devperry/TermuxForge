# Minecraft Forge 1.8.9 on Android (Termux)

This guide will help you develop and compile **Minecraft Forge 1.8.9** mods directly on your Android device using **Termux**.

---

# Requirements

Before getting started, install the following applications.

## 1. Termux (Required)

> **Do NOT install Termux from Google Play.**
>
> The Play Store version is outdated and no longer maintained.

Download it from F-Droid:

https://f-droid.org/packages/com.termux/

---

## 2. MT Manager (Recommended)

We'll use it to edit Java source code, textures, and other project files.

https://mt2.cn/

---

## 3. ZArchiver (Optional)

Useful for extracting ZIP files and managing folders.

https://play.google.com/store/apps/details?id=ru.zdevs.zarchiver

---

# Installation

Open **Termux** and run:

```bash
termux-setup-storage
```

Grant storage permission when Android asks for it.

---

Install Git:

```bash
pkg install git -y
```

Clone this repository:

```bash
git clone https://github.com/devperry/TermuxForge.git
```

Enter the repository:

```bash
cd TermuxForge
```

Give execution permission to the installer:

```bash
chmod +x setupTermux.sh
```

Run it:

```bash
./setupTermux.sh
```

The script will automatically:

- Update Termux packages.
- Install **proot-distro**.
- Install **Alpine Linux**.

Once you're inside Alpine, clone or move one of your Forge mod projects.

---

# Entering the development environment

Whenever you want to work on your mods, run:

```bash
proot-distro login alpine
```

You are now inside Alpine Linux with Java 8 installed.

---

Once you have your mod, move it somewhere accessible from MT Manager (for example `/storage/emulated/0/`):

```bash
mv mod_test /storage/emulated/0/
```

Then create a symbolic link:

```bash
ln -s /storage/emulated/0/mod_test mod_test
```

---

# Editing your code

It is recommended to use **MT Manager** for editing your project.

With MT Manager you can:

- Edit Java files.
- Edit textures.
- Edit JSON files.
- Rename packages.
- Easily manage every project file.

---

# Building the mod

After entering Alpine:

```bash
cd mod_test
```

Build the project:

```bash
chmod +x gradlew
bash gradlew build
```

If everything goes well, the compiled mod will be located in:

```
build/libs/
```

---

# Notes

- This environment uses **OpenJDK 8**, which is required for Minecraft Forge 1.8.9.
- The first build may take several minutes while Gradle downloads all required dependencies.
- An Internet connection is required during the first build.

---

If this repository helped you, consider leaving a ⭐ on GitHub.
