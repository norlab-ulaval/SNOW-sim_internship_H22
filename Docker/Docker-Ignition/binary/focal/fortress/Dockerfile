FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt upgrade -y \
    && . /etc/os-release \
    && apt install -y \
        dirmngr \
        gnupg2 \
        lsb-release \
        wget \
        software-properties-common \
    && wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add - \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null \
    && apt update \
    && apt upgrade -y \
    && apt install -y --no-install-recommends \
        ignition-fortress \
    && apt --purge remove -y \
        dirmngr \
        gnupg2 \
        lsb-release \
        wget \
        software-properties-common \
    && apt clean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
