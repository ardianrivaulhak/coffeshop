#!/bin/bash

echo "========================================="
echo "  COMPLETE DEPLOY TO VERCEL"
echo "========================================="

# Step 1: Clean old build
echo ""
echo "Step 1: Cleaning old build..."
rm -rf build/web

# Step 2: Build fresh
echo ""
echo "Step 2: Building Flutter web..."
flutter build web --release --base-href=/

# Step 3: Copy vercel config
echo ""
echo "Step 3: Setting up Vercel config..."
cat > build/web/vercel.json << 'EOF'
{
  "version": 2,
  "public": true,
  "rewrites": [
    {
      "source": "/(.*)",
      "destination": "/index.html"
    }
  ],
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "Cache-Control",
          "value": "public, max-age=0, must-revalidate"
        }
      ]
    }
  ]
}
EOF

# Step 4: Create _redirects file
echo ""
echo "Step 4: Creating redirects..."
echo "/*    /index.html   200" > build/web/_redirects

# Step 5: Deploy
echo ""
echo "Step 5: Deploying to Vercel..."
cd build/web

# Remove old vercel config if exists
rm -rf .vercel

echo ""
echo "========================================="
echo "  DEPLOYING NOW..."
echo "========================================="
echo ""

# Deploy
vercel --prod

echo ""
echo "========================================="
echo "  DEPLOY COMPLETE!"
echo "========================================="
echo ""
echo "If you see 404 error, wait 1-2 minutes"
echo "for Vercel to propagate the changes."
echo "========================================="
