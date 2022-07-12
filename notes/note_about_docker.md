## Docker
### PULL IMAGE
When using the docker, the image should be pulled from the website of docker, the official website would give a command like `docker pull <name of image>` . For example, I pull a ros melodic desktop full here, my command would be `docker pull osrf/ros:melodic-desktop-full`. 

### RUN & EXEC
The image can be run by the following command: `docker run -t -d --name turtlebot osrf/ros:melodic-desktop-full`. After running the image, a series of numbers would be given, however, that doesn't matter. The container should be executed by the following command.
```
docker ps -a

CONTAINER ID  IMAGE  COMMAND  CREATED  STATUS  PORTS  NAME
S7f4c42451437   osrf/ros:melodic-desktop-full   "/ros_entrypoint.sh …"   11 seconds ago   Up 10 seconds             turtlebot
```

```
docker exec -it turtlebot /bin/bash

root@7f4c42451437:/#
```

### COMMIT
commit the current container as image after installation and you don't need to worry about the lost of container.
```
docker commit turtlebot turtlebot:2022.07.11
```


## START TURTLEBOT
Firstly, the computer need to connect to the Wi-Fi called "DIF018", because the turtlebot is set to connect to this Wi-Fi autonomously.

Secondly, the IP address can be found by command `nmap -sn 10.8.18.0/24`. The the IP address can be found accordingly. Here the IP address of turtlebot waffle is $ 10.8.18.51 $. The IP address of this computer is $ 10.8.18.200 $, which is fixed.

Finally, The ROS in the turtlebot can be executed by the command `ssh ubuntu@10.8.18.51`. The IP address is the IP address of turtlebot. The key of the roubuntu is "turtlebot".

