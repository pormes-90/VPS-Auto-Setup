#!/bin/bash

set -e

echo "🔥 VPS AUTO SETUP STARTING..."

# Update system
sudo apt update -y && sudo apt upgrade -y

# Basic tools
sudo apt install -y curl wget git build-essential ufw

# Ruby + Node
sudo apt install -y ruby nodejs npm

# Firewall setup
ufw allow OpenSSH
ufw allow 80
ufw allow 443
ufw --force enable

# Create project folder
mkdir -p /opt/vps-lab
cd /opt/vps-lab

# Simple server test file
cat <<EOF > server.rb
require 'webrick'

server = WEBrick::HTTPServer.new(
  Port: 8080,
  BindAddress: "0.0.0.0"
)

server.mount_proc "/" do |req, res|
  res.body = "VPS is running OK"
end

trap("INT") { server.shutdown }

puts "Server running on port 8080"
server.start
EOF

echo "✅ SETUP COMPLETE"
echo "👉 Run server: ruby /opt/vps-lab/server.rb"
