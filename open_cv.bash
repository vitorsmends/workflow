# Para executar este arquivo basta utilizas os seguintes comandos no terminal
# $ chmod +x open_cv.sh
# $ sudo ./open_cv.sh

sudo apt update
sudo apt install libopencv-dev python3-opencv
python3 -c "import cv2; print(cv2.__version__)"