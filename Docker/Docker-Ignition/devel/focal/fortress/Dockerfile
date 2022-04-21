FROM isabelleysseric/ignition:buildenv-focal

RUN apt update \
    && apt install -y --no-install-recommends \
        g++ \
        gcc \
        wget \
        git \
        cmake \
        make \
        lsb-release \
        python3-vcstool \
        python3-colcon-common-extensions \
    && mkdir -p /ign_ws/src \
    && cd /ign_ws \
    && wget https://raw.githubusercontent.com/ignition-tooling/gazebodistro/master/collection-fortress.yaml \
    && vcs import src < collection-fortress.yaml \
    && colcon build \
        --merge-install \
        --symlink-install \
        --executor sequential \
        --cmake-args -DCMAKE_BUILD_TYPE=Release \
        --cmake-args -DBUILD_TESTING=OFF \
    && apt --purge remove -y \
        g++ \
        gcc \
        wget \
        git \
        cmake \
        make \
        lsb-release \
        python3-vcstool \
        python3-colcon-common-extensions \
    && rm -rf collection-dome.yaml \
    && rm -rf build \
    && rm -rf log \
    && apt clean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*

COPY ./entrypoint/devel.sh /ign_entrypoint.sh
ENTRYPOINT ["/ign_entrypoint.sh"]

CMD ["/bin/bash"]
