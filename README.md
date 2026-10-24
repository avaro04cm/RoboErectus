# RoboErectus

As the title suggests, the main objective of this repository is to train a robot to simply stand up and walk, inspired by the [*Homo erectus*](https://en.wikipedia.org/wiki/Homo_erectus). 

To achieve this, the repository provides a baseline framework to train humanoid robot policies ($\pi$). Its core features include: 

- Default environments to simplify the process of defining a simulator.
- Pre-trained policies that enable the robot to stand up and walk, either via teleoperation or predefined waypoints.
- An isolated Docker environment to ensure reproducibility and protect the local system configuration from possible corruption.

> **Disclaimer:** It will only stand up and walk. It can't process images, plan paths, or process emotions; it is not a *Homo sapiens*.

## Table of Contents
1. [Requirements](#requirements)
2. [Installation](#installation)

## Requirements
At the moment, the project is being tested on a PC with Ubuntu 24.04 as the operating system, an AMD Ryzen 9 5900X as the CPU, and an NVIDIA GEFORCE RTX 3080ti as the GPU.

You should have a GPU (preferably NVIDIA), but it is not a restrictive condition. You can run the project with a CPU only.

> It is not guaranteed that the project will work on other operating systems yet. 

### 1. Docker
For its execution, it is necessary to have Docker installed. If you don't have Docker installed yet, follow [this guide](https://docs.docker.com/engine/install).

### 2. Nvidia Container Toolkit
To maximize the performance of your PC and use the potential of the GPU, you should have the Nvidia Container Toolkit installed. If you don't have it installed yet, follow [this guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html).

### 3. Enable Video Output
To see what the robot is doing in the simulator, you must have video output enabled on your PC. For that, there are multiple options:

- Linux: In this case, you should enable the X11 window. Type in your bash terminal `export xhost +local:docker` or add this to your *.bashrc* to enable it in all windows, `"xhost +local:docker" > ~/.bashrc` and then execute `source ~/.bashrc`.

- Windows: `TODO: Complete`

- MacOS: `TODO: Complete`

## Installation
`TODO: Complete`