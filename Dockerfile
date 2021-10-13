FROM ros:melodic-ros-base-bionic

RUN apt-get update \
  && apt-get dist-upgrade -y \
  && apt-get install -y --no-install-recommends \
    git \
    wget \
    sudo

ADD /scripts /scripts

RUN bash /scripts/create_catkin_workspace.bash