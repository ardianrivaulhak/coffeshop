#!/bin/bash

echo "========================================="
echo "  DEPLOY COFFEE SHOP TO NETLIFY"
echo "========================================="

# Check if build exists
if [ ! -d "build/web" ]; then
    echo ""
    echo "Building Flutter web..."
    flutter build web --release
fi

# Add _redirects file
echo ""
echo "Adding redirects configuration..."
echo "/*    /index.html   200" > build/web/_redirects

echo ""
echo "========================================="
echo "  DEPLOYING TO NETLIFY..."
echo "========================================="

# Change to build/web directory
cd build/web

# Deploy to Netlify
echo ""
echo "Running: netlify deploy --prod --dir=."
echo ""

netlify deploy --prod --dir=.

echo ""
echo "========================================="
echo "  DEPLOY COMPLETE!"
echo "========================================="
echo ""
echo "Your app is now live on Netlify!"
echo "========================================="
