# Deploy Coffee Shop ke Vercel

## Cara 1: Deploy Manual via Git Bash

### 1. Build aplikasi
```bash
chmod +x deploy.sh
./deploy.sh
```

### 2. Install Vercel CLI (jika belum)
```bash
npm install -g vercel
```

### 3. Login ke Vercel
```bash
vercel login
```

### 4. Deploy
```bash
# Masuk ke folder build
cd build/web

# Deploy (pertama kali)
vercel

# Deploy ke production
vercel --prod
```

## Cara 2: Deploy via GitHub + Vercel Dashboard

### 1. Push ke GitHub
```bash
git init
git add .
git commit -m "Initial commit - Coffee Shop App"
git branch -M main
git remote add origin <URL-REPO-GITHUB-ANDA>
git push -u origin main
```

### 2. Setup di Vercel Dashboard
1. Login ke https://vercel.com
2. Click "Add New Project"
3. Import repository dari GitHub
4. Vercel akan auto-detect Flutter project
5. Click "Deploy"

## Cara 3: Deploy Langsung (Tercepat)

### 1. Build
```bash
flutter build web --release
```

### 2. Deploy langsung dari root
```bash
vercel build/web --prod
```

## Setting Build di Vercel Dashboard (Optional)

Jika deploy via dashboard, tambahkan setting:

**Build Command:**
```
flutter build web --release --web-renderer canvaskit
```

**Output Directory:**
```
build/web
```

**Install Command:**
```
flutter pub get
```

## Troubleshooting

### Jika error "flutter not found":
Vercel mungkin tidak punya Flutter. Solusi:
1. Build di local dulu: `flutter build web --release`
2. Deploy folder build/web saja: `vercel build/web --prod`

### Jika routing tidak work:
Sudah di-handle di `vercel.json` dengan SPA routing.

## URL Setelah Deploy

Setelah deploy, Anda akan mendapat URL seperti:
- https://coffeshop-xxxx.vercel.app
- atau custom domain Anda

## Update/Redeploy

Untuk update aplikasi:
```bash
flutter build web --release
cd build/web
vercel --prod
```

Atau via GitHub (auto-deploy):
```bash
git add .
git commit -m "Update aplikasi"
git push
```
