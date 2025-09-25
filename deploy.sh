#!/bin/bash

# Wealth Masters SSL Certificate Fix Deployment Script
echo "🚀 Starting Wealth Masters deployment with SSL fix..."

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Build CSS if needed
echo "📦 Building CSS..."
npm run build:css

# Deploy to Vercel
echo "🌐 Deploying to Vercel..."
vercel --prod

echo "✅ Deployment complete!"
echo "🔒 SSL certificate should be automatically configured by Vercel"
echo "🌍 Your site: https://wealthmasters.it.com"
echo ""
echo "📋 Next steps:"
echo "1. Wait 5-10 minutes for SSL certificate to propagate"
echo "2. Test your site in different browsers"
echo "3. Check SSL status at: https://www.ssllabs.com/ssltest/"
