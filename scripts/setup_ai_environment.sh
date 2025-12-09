#!/bin/bash

# ---------------------------------------
# Setup Python Environment for AI Projects
# ---------------------------------------

echo "🐍 Installing Python dependencies..."
sudo apt update
sudo apt install -y python3 python3-pip python3-venv

echo "📦 Creating virtual environment..."
python3 -m venv ai_env
source ai_env/bin/activate

echo "📚 Installing AI packages..."
pip install --upgrade pip
pip install torch torchvision torchaudio
pip install langchain openai chromadb fastapi uvicorn

echo "🚀 AI environment setup complete!"
echo "Activate environment anytime using: source ai_env/bin/activate"
