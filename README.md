📦 VPS Auto Setup Script

🔥 One-command deploy VPS setup for Linux servers (Ubuntu/Debian).
Installs essential tools, security firewall, and a simple Ruby web server for testing.

🚀 Features
⚡ Auto system update & upgrade
🧰 Installs essential tools (curl, git, build tools)
💎 Ruby + Node.js environment setup
🔥 UFW firewall configuration
🌐 Simple web server (Ruby WEBrick)
🧪 Ready for VPS testing / development
🖥️ Works on Ubuntu / Debian VPS

📥 Installation
Run this on your VPS:
Bash
curl -O https://raw.githubusercontent.com/pormes-90/vps-auto-setup/main/install.sh && bash run.sh

▶️ Run Server

After installation:
Bash
ruby /opt/vps-lab/server.rb

Then open:
http://YOUR_VPS_IP:8080

📡 Default Open Ports
Port
Description
22
SSH
80
HTTP
443
HTTPS
8080
Test Server

🧠 Project Structure
/opt/vps-lab/
 └── server.rb   # Simple test server
 
🔥 What You Get
After setup, your VPS will be:
Ready for development
Secure with firewall (UFW)
Able to run Ruby/Node apps
Have a working test server

💡 Use Cases
VPS learning lab
Backend testing
API development
Network latency testing
NetHunter / Termux integration backend

⚠️ Notes
Designed for clean Ubuntu/Debian VPS
Requires root access
Tested on minimal cloud VPS (SG region recommended for low latency)

🚀 Future Upgrade Ideas
Nginx + SSL auto setup
Docker environment install
Monitoring dashboard (CPU/RAM/Ping)
Auto domain + Cloudflare integration
One-command production deploy

🧑‍💻 Author
Built for learning DevOps, networking, and VPS automation.
