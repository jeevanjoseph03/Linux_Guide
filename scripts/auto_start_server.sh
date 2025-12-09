#!/bin/bash

# ---------------------------------------------------------
# Create a systemd Service File to Auto-Start a Python Server
# ---------------------------------------------------------

SERVICE_NAME="myserver"
EXEC_PATH="/home/ubuntu/myapp/app.py"

echo "📝 Creating systemd service..."

sudo bash -c "cat > /etc/systemd/system/$SERVICE_NAME.service <<EOF
[Unit]
Description=My Python Server
After=network.target

[Service]
ExecStart=/usr/bin/python3 $EXEC_PATH
Restart=always
User=ubuntu
WorkingDirectory=/home/ubuntu/myapp

[Install]
WantedBy=multi-user.target
EOF"

echo "🚀 Enabling service..."
sudo systemctl daemon-reload
sudo systemctl enable $SERVICE_NAME
sudo systemctl start $SERVICE_NAME

echo "✅ Service $SERVICE_NAME started successfully!"
