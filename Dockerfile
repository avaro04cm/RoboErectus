FROM ros:jazzy-perception-noble

RUN apt-get update && apt-get install -y \
    wget \
    libgl1-mesa-glx \
    libgl1-mesa-dri \
    libglfw3 \
    mesa-utils \
    ros-jazzy-mujoco-ros2-control \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN wget https://github.com/google-deepmind/mujoco/releases/download/3.17.0/mujoco-3.17.0-linux-x86_64.tar.gz \
    && tar -xvzf mujoco-3.17.0-linux-x86_64.tar.gz \
    && rm mujoco-3.17.0-linux-x86_64.tar.gz

RUN mkdir -p /tmp/runtime-root \
    && chmod 700 /tmp/runtime-root

ENV XDG_RUNTIME_DIR=/tmp/runtime-root

RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc

CMD ["bash"]