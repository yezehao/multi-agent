FROM osrf/ros:melodic-desktop-bionic

# install git and catkin
RUN apt-get update\
    && apt-get install --yes git

RUN apt-get update && apt-get install --yes \
        ros-melodic-catkin

# # clone the repo from https://github.com/YD-19/HAM4DRL 
# RUN git clone https://github.com/YD-19/HAM4DRL.git --recurse-submodules

WORKDIR /catkin_ws
COPY HAM4DRL .
RUN /bin/bash -c 'source /opt/ros/$ROS_DISTRO/setup.bash && catkin_make'

# echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc\

