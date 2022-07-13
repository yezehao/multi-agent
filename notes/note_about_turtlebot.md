## START TURTLEBOT
Firstly, the computer need to connect to the Wi-Fi called "DIF018", because the turtlebot is set to connect to this Wi-Fi autonomously.

Secondly, the IP address can be found by command `nmap -sn 10.8.18.0/24`. The the IP address can be found accordingly. Here the IP address of turtlebot waffle is $ 10.8.18.51 $. The IP address of this computer is $ 10.8.18.200 $, which is fixed.

Finally, The ROS in the turtlebot can be executed by the command `ssh ubuntu@10.8.18.51`. The IP address is the IP address of turtlebot. The key of the roubuntu is "turtlebot".

### IP Address
The turtlebot would autonomously connnect to the Wi-Fi called `DIF018`, whose password is `AhVie5sh`. The IP address would be given according to the MAC address of devices. Next time, the IP address would be same with the former connection because of same MAC address. The information about the turtlebots and devices are shown in table.
<font size = 4>
| type | turtlebot ① | turtlebot ② | turtlebot ③ | turtlebot ④ 
|:-:|:-:|:-:|:-:|:-:|
| IP address | 10.8.18.51 | 10.8.18.51 | 10.8.18.231 | 10.8.18.216 |
</font>