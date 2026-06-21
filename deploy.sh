#!/bin/bash

echo "========================================="
echo "  COFFEE SHOP - BUILD & DEPLOY"
echo "========================================="

# Build Flutter Web
echo ""
echo "Building Flutter Web..."
flutter build web --release --web-renderer canvaskit

if [ $? -eq 0 ]; then
    echo ""
    echo "✓ Build successful!"
    echo ""
    echo "========================================="
    echo "  DEPLOYING TO VERCEL"
    echo "========================================="
    echo ""
    echo "Please run one of the following:"
    echo ""
    echo "1. First time deployment:"
    echo "   vercel build/web"
    echo ""
    echo "2. Production deployment:"
    echo "   vercel --prod build/web"
    echo ""
    echo "Or use Vercel CLI directly:"
    echo "   cd build/web && vercel --prod"
else
    echo ""
    echo "✗ Build failed!"
    exit 1
fi
