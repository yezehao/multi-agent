FROM osrf/ros:melodic-desktop-bionic

# The camera info is concluded in the bring_up
# Do not need to install anymore
# RUN apt-get update && apt-get install --yes \
#         ros-melodic-catkin \
#         ros-melodic-gazebo-msgs

WORKDIR /catkin_ws
COPY HAM4DRL .
RUN /bin/bash -c \
        'source /opt/ros/$ROS_DISTRO/setup.bash \ 
        && catkin_make \ 
        && echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc'

