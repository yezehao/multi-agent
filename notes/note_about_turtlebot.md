## START TURTLEBOT
Firstly, the computer need to connect to the Wi-Fi called "DIF018", because the turtlebot is set to connect to this Wi-Fi autonomously.

Secondly, the IP address can be found by command `nmap -sn 10.8.18.0/24`. The the IP address can be found accordingly. Here the IP address of turtlebot waffle is $ 10.8.18.51 $. The IP address of this computer is $ 10.8.18.200 $, which is fixed.

Finally, The ROS in the turtlebot can be executed by the command `ssh ubuntu@10.8.18.51`. The IP address is the IP address of turtlebot. The key of the roubuntu is "turtlebot".
