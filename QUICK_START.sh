#!/bin/bash

# QUICK_START.sh - Interactive Setup Guide
# KIIT HackDays 2025 - Smart Assignment Insight Generator
# This script guides you through the setup process step by step

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║          QUICK START - INTERACTIVE SETUP WIZARD                ║"
echo "║          KIIT HackDays 2025 - Smart Doc Analyst                ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "⏱️  Estimated time: 5-10 minutes"
echo ""
echo "This wizard will guide you through:"
echo "  1. Checking Python installation"
echo "  2. Getting Gemini API key"
echo "  3. Setting up environment"
echo "  4. Installing dependencies"
echo "  5. Launching the application"
echo ""
read -p "Ready to start? (yes/no): " ready
if [ "$ready" != "yes" ]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 1: Check Python Installation"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 not found!"
    echo ""
    echo "Please install Python 3.8+ from: https://www.python.org"
    echo "Make sure to check 'Add Python to PATH' during installation."
    exit 1
fi

python_version=$(python3 --version 2>&1 | awk '{print $2}')
echo "✅ Python found: $python_version"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 2: Get Gemini API Key"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "You need a FREE Gemini API key to run this project."
echo ""
echo "📍 INSTRUCTIONS:"
echo "   1. Visit: https://ai.google.com/gemini"
echo "   2. Click: 'Get API Key' or 'Get Started'"
echo "   3. Sign in with your Google account"
echo "   4. Copy your API key"
echo ""
read -p "Do you have your API key ready? (yes/no): " has_key
if [ "$has_key" != "yes" ]; then
    echo ""
    echo "Please get your API key first:"
    echo "  → https://ai.google.com/gemini"
    echo ""
    echo "Come back and run this script again when you have it."
    exit 0
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 3: Set Environment Variable"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📝 Paste your API key (it's safe, used locally only):"
read -sp "API Key: " GEMINI_API_KEY
echo ""
echo ""

if [ -z "$GEMINI_API_KEY" ]; then
    echo "❌ API key is empty!"
    exit 1
fi

export GEMINI_API_KEY
echo "✅ API key set successfully"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 4: Setup Virtual Environment"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "❌ Failed to create virtual environment"
        exit 1
    fi
    echo "✅ Virtual environment created"
else
    echo "✅ Virtual environment already exists"
fi

echo ""
echo "Activating virtual environment..."
source venv/bin/activate
if [ $? -ne 0 ]; then
    echo "❌ Failed to activate virtual environment"
    exit 1
fi
echo "✅ Virtual environment activated"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 5: Install Dependencies"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Installing required packages..."
echo "(This may take 1-2 minutes...)"
echo ""

pip install -q -r requirements.txt
if [ $? -ne 0 ]; then
    echo "❌ Failed to install dependencies"
    echo ""
    echo "Try manually:"
    echo "  pip install -r requirements.txt"
    exit 1
fi

echo "✅ Dependencies installed successfully"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 6: Launch Application"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "🚀 Starting Flask application..."
echo ""
echo "✅ Application starting!"
echo ""
echo "📍 NEXT STEPS:"
echo "   1. Open your browser"
echo "   2. Go to: http://localhost:5000"
echo "   3. Upload a PDF and click 'Analyze with Gemini AI'"
echo "   4. Wait 15-20 seconds for results"
echo ""
echo "To stop the application: Press Ctrl+C"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Run the application
python3 app.py
