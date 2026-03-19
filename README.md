# Mobile-Robots-Practical-Lab

## 📥 Installation

### 1️⃣ Install Docker

If Docker is not already installed, follow the official Docker installation guide for your operating system:

- **Ubuntu**: https://docs.docker.com/engine/install/ubuntu/
- **macOS**: https://docs.docker.com/desktop/install/mac-install/
- **Windows (WSL2 required)**: https://docs.docker.com/desktop/install/windows-install/

Verify the installation:

```bash
docker --version
```

### 2️⃣ Clone Repositry 
In Wsl clone repo and get inside workspace:

```bash
git clone https://github.com/THI-Robotics-Lab/Mobile-Robots-Practical-Lab.git
cd Mobile-Robots-Practical-Lab
```

### 3️⃣ Run Docker Container

Make the scripts executable

```bash
chmod +x ./Scripts/*.sh
```

Run shell script which start the container: 

```bash
./Scripts/start_container.sh
```

### 4️⃣ Building Workspaces 

Run shell script inside docker container: 

```bash
./Scripts/auto_build_ws.sh
```

### 5️⃣ Vscode Integration

1. Install Visual Studio Code

2. Install the Dev Containers extension

    <img src="Images/Dev_Container.png" alt="Dev Container" width="500">

3. Press Ctrl + Shift + P and select Dev Containers: Attach to Running Container

    <img src="Images/Attach_Container.png" alt="Attach Container" width="500">

4. Choose `MobileRobots`

    <img src="Images/Choose_Container.png" alt="Choose Container" width="500">

## 📁 Repository Structure

```bash
🤖 Mobile-Robots-Practical-Lab
 ┣ 📂 Docker
 ┣ 📂 Images
 ┣ 📜 LICENSE
 ┣ 📂 my_ws                   # Write your code inside this package   
 ┃ ┣ 📂 build
 ┃ ┣ 📂 install
 ┃ ┣ 📂 log
 ┃ ┗ 📂 src
 ┣ 📜 README.md
 ┣ 📂 Scripts
 ┃ ┣ 📜 auto_build_ws.sh         
 ┃ ┣ 📜 start_container.sh       
 ┃ ┗ 📜 zenoh_bridge.sh          
 ┣ 📂 Tasks                      
 ┃ ┣ 📂 Chapter_01
 ┃ ┣ 📂 Chapter_02
 ┃ ┣ 📂 Chapter_03
 ┃ ┣ 📂 Chapter_04
 ┃ ┗ 📂 Chapter_05
 ┗ 📂 turtlebot_ws               
   ┣ 📂 build
   ┣ 📂 install
   ┣ 📂 log
   ┗ 📂 src
     ┣ 📦 DynamixelSDK
     ┣ 📦 turtlebot3
     ┣ 📦 turtlebot3_msgs
     ┗ 📦 turtlebot3_simulations
```

## 👨‍💻 Developed By

- Prof Dr-ing Alen Turnwald Alen.Turnwald@thi.de
- Asser Soliman ass1728@thi.de
