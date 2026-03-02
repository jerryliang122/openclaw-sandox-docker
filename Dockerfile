# OpenClaw 自定义沙箱镜像
# 包含常用开发工具

FROM debian:bookworm-slim

# 安装常用工具
RUN apt-get update && apt-get install -y \
    # Git 版本控制
    git \
    # Python
    python3 \
    python3-pip \
    python3-venv \
    # Node.js
    nodejs \
    npm \
    # curl 网络工具
    curl \
    wget \
    # 构建工具
    build-essential \
    # 其他常用
    vim \
    unzip \
    zip \
    tar \
    && rm -rf /var/lib/apt/lists/*

# 设置默认用户为 root
USER root

# 默认工作目录
WORKDIR /workspace
