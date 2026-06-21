# 📱 Panduan Instalasi & Menjalankan CoffeeLux

## ✅ Prasyarat

Sebelum menjalankan aplikasi ini, Anda perlu menginstall Flutter terlebih dahulu.

## 🔧 Cara Install Flutter di Windows

### Langkah 1: Download Flutter SDK

1. Kunjungi: https://docs.flutter.dev/get-started/install/windows
2. Download Flutter SDK terbaru (versi stable)
3. Extract file ZIP ke folder, misalnya: `C:\src\flutter`

### Langkah 2: Setup Environment Variable

1. Buka **System Properties** → **Environment Variables**
2. Di bagian **User variables**, edit **Path**
3. Tambahkan path Flutter: `C:\src\flutter\bin` (sesuaikan dengan lokasi ekstrak Anda)
4. Klik OK untuk menyimpan

### Langkah 3: Verifikasi Instalasi

Buka Command Prompt atau PowerShell baru, lalu jalankan:

```bash
flutter --version
flutter doctor
```

### Langkah 4: Install Dependencies Tambahan

Flutter akan memberitahu dependencies yang masih kurang melalui `flutter doctor`. Biasanya Anda perlu:

- **Android Studio** (untuk emulator Android)
  - Download: https://developer.android.com/studio
  - Install Android SDK dan Android SDK Command-line Tools
  
- **Visual Studio** (untuk Windows desktop support - opsional)
  - Download: https://visualstudio.microsoft.com/downloads/

- **Chrome** (untuk web support - opsional)

### Langkah 5: Accept Android Licenses

```bash
flutter doctor --android-licenses
```

Ketik `y` untuk menerima semua license.

## 🚀 Cara Menjalankan Aplikasi CoffeeLux

### Opsi 1: Menggunakan Emulator Android

1. Buka Android Studio → AVD Manager
2. Create Virtual Device (pilih device apa saja, misal Pixel 6)
3. Start emulator

Atau lewat command line:
```bash
# List emulator yang tersedia
flutter emulators

# Jalankan emulator
flutter emulators --launch <emulator_id>
```

4. Di folder project, jalankan:
```bash
cd C:\Ardian-titip\coffeshop
flutter pub get
flutter run
```

### Opsi 2: Menggunakan HP Android Fisik

1. Aktifkan **Developer Mode** di HP Android:
   - Masuk Settings → About Phone
   - Tap "Build Number" 7 kali
   
2. Aktifkan **USB Debugging**:
   - Settings → Developer Options → USB Debugging (ON)
   
3. Hubungkan HP ke komputer via USB

4. Verifikasi device terdeteksi:
```bash
flutter devices
```

5. Jalankan aplikasi:
```bash
cd C:\Ardian-titip\coffeshop
flutter pub get
flutter run
```

### Opsi 3: Menggunakan Chrome (Web)

```bash
cd C:\Ardian-titip\coffeshop
flutter pub get
flutter run -d chrome
```

### Opsi 4: Menggunakan Windows Desktop

```bash
cd C:\Ardian-titip\coffeshop
flutter pub get
flutter run -d windows
```

## 🐛 Troubleshooting

### Error: "flutter command not found"
- Pastikan Flutter sudah ditambahkan ke PATH
- Restart terminal/command prompt setelah menambah PATH
- Verifikasi dengan: `flutter --version`

### Error: "No devices found"
- Pastikan emulator sudah running atau HP sudah terhubung
- Jalankan: `flutter devices` untuk cek device
- Untuk web: pastikan Chrome terinstall
- Untuk Windows: pastikan Visual Studio C++ tools terinstall

### Error saat `flutter pub get`
- Pastikan internet terkoneksi
- Coba hapus folder `pubspec.lock` dan jalankan lagi
- Coba: `flutter pub cache repair`

### Error: "SDK version not compatible"
- Update Flutter: `flutter upgrade`
- Atau sesuaikan versi SDK di `pubspec.yaml`

## 📚 Resource Tambahan

- **Dokumentasi Flutter**: https://docs.flutter.dev
- **Flutter Installation Guide**: https://docs.flutter.dev/get-started/install
- **Flutter YouTube Channel**: https://www.youtube.com/c/flutterdev

## 🎯 Quick Commands

```bash
# Install dependencies
flutter pub get

# Run app
flutter run

# Run on specific device
flutter run -d <device_id>

# Run in release mode (faster)
flutter run --release

# Hot reload (press 'r' di terminal saat app running)
# Hot restart (press 'R' di terminal)

# Build APK
flutter build apk

# Build for web
flutter build web
```

## ✨ Tips

- Gunakan **Hot Reload** (tekan `r`) untuk melihat perubahan tanpa restart
- Gunakan **Hot Restart** (tekan `R`) untuk restart penuh
- Tekan `q` untuk quit aplikasi dari terminal
- Gunakan `flutter run --verbose` untuk debug mode

---

**Selamat mencoba! ☕**
