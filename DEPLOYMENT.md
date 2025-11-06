# Deployment Instructions for GitHub Pages

Follow these steps to create a new GitHub repository and deploy this site to GitHub Pages under the `nine-one-six-systems` organization.

## Step 1: Create the GitHub Repository

1. Go to [GitHub](https://github.com/organizations/nine-one-six-systems/repositories/new)
2. Or navigate to: `https://github.com/organizations/nine-one-six-systems/repositories/new`
3. Repository name: Choose a name (e.g., `communication-letter`, `business-communication`, or `stephen-communication`)
4. Description: "Business Communication - Values, Vision, and Ventures"
5. Set visibility (Public or Private - GitHub Pages works with both)
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

## Step 2: Initialize Git and Push Files

Open your terminal in this directory and run these commands:

```bash
# Initialize git repository (if not already initialized)
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Business communication document"

# Add the remote repository (replace REPO_NAME with your actual repository name)
git remote add origin https://github.com/nine-one-six-systems/REPO_NAME.git

# Or if using SSH:
# git remote add origin git@github.com:nine-one-six-systems/REPO_NAME.git

# Push to main branch
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** (top menu)
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

## Step 4: Access Your Site

Your site will be available at:
- `https://nine-one-six-systems.github.io/REPO_NAME/`

**Note:** It may take a few minutes for GitHub Pages to build and deploy your site. You'll see a green checkmark on your repository when it's ready.

## Quick Command Reference

If you need to make changes later:

```bash
git add .
git commit -m "Update content"
git push
```

GitHub Pages will automatically rebuild and deploy your changes.

