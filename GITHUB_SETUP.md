# GitHub Setup Guide for LawFirm Pro

## If you're getting a 404 error on GitHub:

**Common Causes:**
1. The repository doesn't exist on GitHub yet (most common)
2. The repository URL is incorrect (typo in username or repo name)
3. The repository is private and you don't have access
4. The repository was deleted or moved
5. You're not logged into the correct GitHub account

**Quick Diagnostic Steps:**
1. Open `setup-github.bat` file (double-click it) to check your Git setup
2. Verify you're logged into GitHub in your browser
3. Try accessing the repository URL directly in your browser
   - If it shows 404, the repository doesn't exist - CREATE IT FIRST
   - If it shows "404 Not Found" but you're logged in, check the URL spelling
   - If it shows the repository page, you need to push your code

## Solution: Create a new repository and push your code

### Step 1: Create a new repository on GitHub (IMPORTANT - DO THIS FIRST!)

**⚠️ CRITICAL: The 404 error means the repository doesn't exist. You MUST create it on GitHub first!**

1. Go to https://github.com and **LOG IN** (make sure you're logged in!)
2. Click the **"+"** icon in the top right corner (or go directly to https://github.com/new)
3. Select **"New repository"**
4. **Repository name:** Choose a name (e.g., "lawfirm-pro" or "lawfirm-template")
   - Use lowercase letters, numbers, and hyphens only
   - No spaces or special characters
5. **Description:** (optional) "Law Firm Website Template"
6. Choose **Public** or **Private**
7. **IMPORTANT:** 
   - ❌ DO NOT check "Add a README file"
   - ❌ DO NOT check "Add .gitignore"
   - ❌ DO NOT choose a license
   - Leave everything UNCHECKED!
8. Click **"Create repository"** button
9. **After creating, you'll see a page with setup instructions - DON'T follow those yet!**

### Step 2: Initialize Git in your local project
Open PowerShell or Command Prompt in your project directory (`c:\smartfusion\laww`) and run:

```bash
# Initialize git repository
git init

# Add all files
git add .

# Make initial commit
git commit -m "Initial commit: LawFirm Pro template"

# Add your GitHub repository as remote (replace YOUR_USERNAME and YOUR_REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Example (replace with your actual GitHub username and repo name):
```bash
git init
git add .
git commit -m "Initial commit: LawFirm Pro template"
git remote add origin https://github.com/yourusername/lawfirm-pro.git
git branch -M main
git push -u origin main
```

### Step 3: If you already have a repository URL but getting 404

1. **Check the repository URL:**
   ```bash
   git remote -v
   ```

2. **If the URL is wrong, update it:**
   ```bash
   git remote set-url origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
   ```

3. **If the repository doesn't exist, create it on GitHub first (Step 1)**

## Troubleshooting

### If git is not installed:
1. Download Git from: https://git-scm.com/download/win
2. Install it with default settings
3. Restart your terminal/PowerShell
4. Try the commands again

### If you get authentication errors:
You may need to use a Personal Access Token instead of password:
1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate a new token with "repo" permissions
3. Use the token as your password when pushing

### If files are too large:
GitHub has a 100MB file limit. If you have large files, consider using Git LFS or removing them.

## Current Project Structure
```
laww/
├── assets/
│   ├── css/
│   ├── js/
│   └── images/
├── pages/
│   ├── index.html
│   ├── about.html
│   ├── login.html
│   └── ... (14 total pages)
├── partials/
│   ├── footer.html
│   ├── header.html
│   └── ...
├── docs/
├── README.txt
└── GITHUB_SETUP.md (this file)
```

## After pushing to GitHub

Your repository will be accessible at:
`https://github.com/YOUR_USERNAME/YOUR_REPO_NAME`

You can then:
- Share the link with others
- Set up GitHub Pages for hosting
- Collaborate with team members
- Track issues and updates

## Need Help? Common Issues Fixed:

### Issue: "repository not found" or 404 error
**Solution:** The repository doesn't exist yet. You MUST create it on GitHub.com first (Step 1 above)

### Issue: "fatal: not a git repository"
**Solution:** Run `git init` first to initialize the repository

### Issue: "remote origin already exists"
**Solution:** Remove the old remote and add the correct one:
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

### Issue: "Authentication failed"
**Solution:** 
- Use a Personal Access Token instead of password
- Go to: GitHub → Settings → Developer settings → Personal access tokens → Generate new token
- Give it "repo" permissions
- Use the token as your password when pushing

### Issue: "Git is not recognized"
**Solution:** Install Git from https://git-scm.com/download/win, then restart your terminal

### Issue: Repository URL shows 404 in browser
**Check:**
1. Is the repository name spelled correctly?
2. Is your GitHub username correct?
3. Are you logged into the right GitHub account?
4. Does the repository actually exist? (Check your repositories page)

## Still Having Issues?

1. **Run the diagnostic tool:** Double-click `setup-github.bat` to check your setup
2. **Verify repository exists:** Go to `https://github.com/YOUR_USERNAME/YOUR_REPO_NAME` in your browser
3. **Check Git is working:** Run `git --version` in PowerShell
4. **Verify you're in the right folder:** Make sure you're in `c:\smartfusion\laww` directory
