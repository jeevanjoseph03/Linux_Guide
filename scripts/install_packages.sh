#!/bin/bash

# -------------------------------
# Install Essential Linux Packages
# -------------------------------

echo "🔧 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing common tools..."
sudo apt install -y \
  curl \
  wget \
  git \
  nano \
  htop \
  unzip \
  build-essential \
  python3 \
  python3-pip

echo "✅ Installation complete!"
