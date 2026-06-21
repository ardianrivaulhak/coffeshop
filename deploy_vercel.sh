#!/bin/bash

echo "========================================="
echo "  DEPLOY COFFEE SHOP TO VERCEL"
echo "========================================="

# Check if build exists
if [ ! -d "build/web" ]; then
    echo ""
    echo "Build folder not found. Building first..."
    flutter build web --release
fi

echo ""
echo "Copying vercel.json to build folder..."
cp vercel.json build/web/

echo ""
echo "========================================="
echo "  DEPLOYING..."
echo "========================================="

# Change to build/web directory
cd build/web

# Deploy to Vercel
echo ""
echo "Running: vercel --prod"
echo ""

vercel --prod

echo ""
echo "========================================="
echo "  DEPLOY COMPLETE!"
echo "========================================="
