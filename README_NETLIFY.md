# Deploy Coffee Shop ke Netlify

## Cara Tercepat (CLI)

### 1. Install Netlify CLI
```bash
npm install -g netlify-cli
```

### 2. Login ke Netlify
```bash
netlify login
```
Ini akan buka browser untuk login.

### 3. Deploy dengan script
```bash
chmod +x deploy_netlify.sh
./deploy_netlify.sh
```

Atau manual:
```bash
cd build/web
netlify deploy --prod --dir=.
```

---

## Cara Manual via Dashboard (Drag & Drop)

### 1. Buka https://app.netlify.com

### 2. Login dengan GitHub/Email

### 3. Drag & Drop
- Buka halaman "Sites"
- Drag folder `build/web` ke area drop zone
- Netlify akan auto-deploy!

---

## Cara via GitHub (Auto Deploy)

### 1. Push ke GitHub
```bash
git init
git add .
git commit -m "Coffee Shop App"
git branch -M main
git remote add origin <URL-REPO-ANDA>
git push -u origin main
```

### 2. Connect di Netlify
1. Login ke https://app.netlify.com
2. Click "Add new site" → "Import an existing project"
3. Choose "GitHub"
4. Select repository
5. Build settings (auto-detected dari netlify.toml):
   - Build command: `flutter build web --release`
   - Publish directory: `build/web`
6. Click "Deploy site"

---

## Custom Domain (Optional)

Setelah deploy:
1. Go to Site settings → Domain management
2. Click "Add custom domain"
3. Follow instructions untuk setup DNS

---

## Update/Redeploy

### Via CLI:
```bash
flutter build web --release
cd build/web
netlify deploy --prod --dir=.
```

### Via GitHub:
```bash
git add .
git commit -m "Update"
git push
```
Auto-deploy!

### Via Dashboard:
Drag & drop folder `build/web` lagi.

---

## Troubleshooting

### 404 Error
Sudah di-handle dengan `_redirects` file. Jika masih error, tambahkan di Netlify dashboard:
- Site settings → Build & deploy → Post processing
- Add redirect rule: `/* /index.html 200`

### Images tidak load
Gunakan relative path atau CDN URLs.

### Build failed
Netlify tidak punya Flutter. Solusi:
1. Build di local: `flutter build web --release`
2. Deploy folder build/web saja
3. Atau gunakan Drag & Drop method

---

## URL Setelah Deploy

Anda akan dapat URL seperti:
- `https://random-name-123.netlify.app`
- Atau custom domain Anda

Bisa rename di Site settings → Site details → Change site name
