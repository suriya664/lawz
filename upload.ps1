# PowerShell Script to Upload LawFirm Pro to GitHub
# Run this script: Right-click → Run with PowerShell

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Upload LawFirm Pro to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
Write-Host "[1] Checking if Git is installed..." -ForegroundColor Yellow
try {
    $gitVersion = git --version 2>&1
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ ERROR: Git is NOT installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "Then run this script again." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Check if already in git repository
$isGitRepo = Test-Path .git
if ($isGitRepo) {
    Write-Host "[2] Git repository already initialized" -ForegroundColor Green
    git remote -v
    Write-Host ""
} else {
    Write-Host "[2] Initializing Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Repository initialized" -ForegroundColor Green
    Write-Host ""
}

# Get GitHub repository URL
Write-Host "[3] GitHub Repository Setup" -ForegroundColor Yellow
Write-Host ""
Write-Host "Have you created a repository on GitHub.com? (yes/no)" -ForegroundColor Cyan
$hasRepo = Read-Host
if ($hasRepo -ne "yes" -and $hasRepo -ne "y") {
    Write-Host ""
    Write-Host "Please create a repository first:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://github.com/new" -ForegroundColor White
    Write-Host "2. Enter a repository name" -ForegroundColor White
    Write-Host "3. DO NOT initialize with README" -ForegroundColor White
    Write-Host "4. Click 'Create repository'" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter after you've created the repository"
}

Write-Host ""
Write-Host "Enter your GitHub repository URL:" -ForegroundColor Cyan
Write-Host "Example: https://github.com/username/lawfirm-pro.git" -ForegroundColor Gray
$repoUrl = Read-Host "Repository URL"

# Validate URL
if ($repoUrl -notmatch "^https://github.com/") {
    Write-Host "✗ Invalid URL. Please use https://github.com/username/repo-name.git" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""

# Add files and commit
Write-Host "[4] Adding files to Git..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "[5] Creating commit..." -ForegroundColor Yellow
git commit -m "Initial commit: LawFirm Pro template"
Write-Host "✓ Commit created" -ForegroundColor Green

Write-Host ""

# Check if remote exists
$remoteExists = git remote | Select-String -Pattern "origin"
if ($remoteExists) {
    Write-Host "[6] Remote 'origin' already exists. Updating..." -ForegroundColor Yellow
    git remote set-url origin $repoUrl
} else {
    Write-Host "[6] Adding remote repository..." -ForegroundColor Yellow
    git remote add origin $repoUrl
}
Write-Host "✓ Remote added" -ForegroundColor Green

Write-Host ""

# Set branch to main
Write-Host "[7] Setting branch to 'main'..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch set to main" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Ready to Upload!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Now I'll push to GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "⚠ IMPORTANT: When prompted for credentials:" -ForegroundColor Red
Write-Host "   - Username: Your GitHub username" -ForegroundColor White
Write-Host "   - Password: Use a Personal Access Token" -ForegroundColor White
Write-Host "     (NOT your GitHub password!)" -ForegroundColor White
Write-Host ""
Write-Host "   Get token from: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host ""
Read-Host "Press Enter to continue with upload"

# Push to GitHub
Write-Host ""
Write-Host "[8] Uploading to GitHub..." -ForegroundColor Yellow
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  ✓ SUCCESS! Uploaded to GitHub!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your repository is now at:" -ForegroundColor Cyan
    $repoUrl = $repoUrl -replace '\.git$', ''
    Write-Host $repoUrl -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "✗ Upload failed. Check the error above." -ForegroundColor Red
    Write-Host ""
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "  - Authentication failed: Use Personal Access Token" -ForegroundColor White
    Write-Host "  - Repository not found: Check the URL is correct" -ForegroundColor White
    Write-Host "  - Network error: Check your internet connection" -ForegroundColor White
    Write-Host ""
}

Read-Host "Press Enter to exit"
