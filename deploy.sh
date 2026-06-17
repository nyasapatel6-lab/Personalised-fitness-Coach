#!/bin/bash
# Quick Vercel Deployment Script
# Run this once: bash deploy.sh

echo "🚀 FitAI Deployment to Vercel"
echo "=============================="
echo ""
echo "Step 1: Installing dependencies..."
npm install

echo ""
echo "Step 2: Deploying to Vercel..."
echo "Note: You'll be prompted to:"
echo "  - Link to existing project or create new"
echo "  - Confirm project settings"
echo ""
echo "After deployment, add this env var in Vercel dashboard:"
echo "  GROQ_API_KEY = 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"
echo ""

vercel --prod

echo ""
echo "✅ Deployment complete!"
echo "Your app is now live on Vercel!"
