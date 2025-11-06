#!/bin/bash

# Script to set up and deploy to GitHub Pages
# Run this AFTER creating the repository on GitHub

echo "🚀 Setting up repository for GitHub Pages..."

# Check if repository name is provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide the repository name"
    echo "Usage: ./setup-repo.sh REPOSITORY_NAME"
    echo "Example: ./setup-repo.sh business-communication"
    exit 1
fi

REPO_NAME=$1
ORG_NAME="nine-one-six-systems"

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add all files
echo "📝 Adding files..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Business communication document"

# Add remote
echo "🔗 Adding remote repository..."
git remote add origin https://github.com/${ORG_NAME}/${REPO_NAME}.git 2>/dev/null || git remote set-url origin https://github.com/${ORG_NAME}/${REPO_NAME}.git

# Set main branch
git branch -M main

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Repository setup complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to: https://github.com/${ORG_NAME}/${REPO_NAME}/settings/pages"
echo "2. Under 'Source', select branch: main"
echo "3. Click 'Save'"
echo ""
echo "🌐 Your site will be available at:"
echo "   https://${ORG_NAME}.github.io/${REPO_NAME}/"
echo ""

