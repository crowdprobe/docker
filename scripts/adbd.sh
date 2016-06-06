
sudo docker run -d --privileged --restart="unless-stopped" -v /dev/bus/usb:/dev/bus/usb --name adbd sorccu/adb
