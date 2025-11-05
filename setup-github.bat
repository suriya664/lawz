@echo off
echo ========================================
echo GitHub Setup Diagnostic Tool
echo ========================================
echo.

REM Check if Git is installed
echo [1] Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is NOT installed!
    echo.
    echo Please install Git from: https://git-scm.com/download/win
    echo Then restart this script.
    pause
    exit /b 1
) else (
    git --version
    echo Git is installed ✓
)
echo.

REM Check if .git folder exists
echo [2] Checking if repository is initialized...
if exist .git (
    echo Repository is initialized ✓
    echo.
    echo Current remote URLs:
    git remote -v
    echo.
) else (
    echo Repository is NOT initialized yet.
    echo.
    echo To initialize, run these commands:
    echo   git init
    echo   git add .
    echo   git commit -m "Initial commit"
    echo.
)
echo.

REM Check GitHub connection
echo [3] Checking GitHub connection...
ping -n 1 github.com >nul 2>&1
if %errorlevel% neq 0 (
    echo WARNING: Cannot reach github.com. Check your internet connection.
) else (
    echo GitHub is reachable ✓
)
echo.

echo ========================================
echo NEXT STEPS:
echo ========================================
echo.
echo 1. Make sure you have a GitHub account
echo 2. Create a NEW repository on GitHub.com
echo    - Go to: https://github.com/new
echo    - Choose a repository name (e.g., lawfirm-pro)
echo    - DO NOT initialize with README
echo    - Click "Create repository"
echo.
echo 3. If repository is not initialized, run:
echo    git init
echo    git add .
echo    git commit -m "Initial commit: LawFirm Pro"
echo.
echo 4. Add your GitHub repository:
echo    git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
echo.
echo 5. Push to GitHub:
echo    git branch -M main
echo    git push -u origin main
echo.
echo IMPORTANT: Replace YOUR_USERNAME and YOUR_REPO_NAME with your actual values!
echo.
pause
