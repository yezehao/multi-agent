## START TURTLEBOT
Firstly, the computer need to connect to the Wi-Fi called "DIF018", because the turtlebot is set to connect to this Wi-Fi autonomously.

Secondly, the IP address can be found by command `nmap -sn 10.8.18.0/24`. The the IP address can be found accordingly. Here the IP address of turtlebot waffle is $ 10.8.18.51 $. The IP address of this computer is $ 10.8.18.200 $, which is fixed.

Finally, The ROS in the turtlebot can be executed by the command `ssh ubuntu@10.8.18.51`. The IP address is the IP address of turtlebot. The key of the roubuntu is "turtlebot".

### IP Address
The turtlebot would autonomously connnect to the Wi-Fi called `DIF018`, whose password is `AhVie5sh`. The IP address would be given according to the MAC address of devices. Next time, the IP address would be same with the former connection because of same MAC address. The information about the turtlebots and devices are shown in table.
<font size = 4>
| type | turtlebot ① | turtlebot ② | turtlebot ③ | turtlebot ④ 
|:-:|:-:|:-:|:-:|:-:|
| IP address | 10.8.18.51 | 10.8.18.52 | 10.8.18.231 | 10.8.18.216 |
</font>

### RPI CAMERA
+ [Official Turtorial About RPICamera](https://emanual.robotis.com/docs/en/platform/turtlebot3/appendix_raspi_cam/)

The turtlebot waffle_pi need to be launched by the according launch files to realise the corresponding functions. I hope to load the images from the Raspberry Pi camera and use them as the input to train the agent. The exist launch file which can read the camera information is `turtlebot3_rpicamera.launch`. This would be helpful for acquiring the camera information. The exec command is `roslaunch turtlebot3_bringup turtlebot3_rpicamera.launch`, whose format is `roslaunch package_name file.launch`.
```
roscd turtlebot3_bringup
cd launch/
nano turtlebot3_rpicamera.launch
```
In this way, it is possible to check the rpicamera launch file in WSL terminal. Then it comes to the problem that how to write a launch file. The program about `bring_up` file can be checked in [bring_up](https://github.com/ROBOTIS-GIT/turtlebot3/tree/master/turtlebot3_bringup). The launch file about the rpicamera is shown as follow:

`````
<launch>
  <node pkg="raspicam_node" type="raspicam_node" name="raspicam_node" output="screen">
    <param name="camera_info_url" value="package://turtlebot3_bringup/camera_info/turtlebot3_rpicamera.yaml"/>
    <param name="width" value="640"/>
    <param name="height" value="480"/>
    <param name="framerate" value="15"/>
    <param name="camera_frame_id" value="camera"/>
  </node>
</launch>
`````

### APRILTAG
+ [GitHub repo](https://github.com/AprilRobotics/apriltag) | [INTRO](https://april.eecs.umich.edu/software/apriltag#:~:text=AprilTag%20is%20a%20visual%20fiducial,tags%20relative%20to%20the%20camera.)


### PARKING
The ROBOTICS e-Manual give an example about the automatic parking vision in their GitHub. However, their program is based on the ROS-kinetics, which means that some of them need to be changed. The sign for parking is the AR code, where AR marker detection is used. The Apriltag can be an alternative about the AR code. **[The GitHub of automatic parking vision](https://github.com/ROBOTIS-GIT/turtlebot3_applications/tree/master/turtlebot3_automatic_parking_vision)**,**[Official Document](https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/#pc-setup)**