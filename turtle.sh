# Para executar este arquivo basta utilizas os seguintes comandos no terminal
# $ chmod +x turtle.sh
# $ sudo ./turtle.sh

sudo apt update
sudo apt install ros-noetic-rgbd-launch ros-noetic-rosserial-arduino -y
sudo apt install ros-noetic-rosserial-python ros-noetic-rosserial-client -y
sudo apt install ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server -y
sudo apt install ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro -y
sudo apt install ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz -y
sudo apt install ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers -y
