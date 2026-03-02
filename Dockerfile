# OpenClaw 自定义沙箱镜像
# 包含常用开发工具

FROM debian:bookworm-slim

# 安装常用工具
RUN apt-get update && apt-get install -y \
    # Playwright/Chromium 依赖
    libnss3 \
    libnspr4 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libdrm2 \
    libxkbcommon0 \
    libatspi2.0-0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2t64 \
    libpango-1.0-0 \
    libcairo2 \
    libatlas-base-dev \
    # 字体支持（可选，防止中文乱码）
    fonts-liberation \
    fonts-noto-cjk \
    && rm -rf /var/lib/apt/lists/*
    
# 设置默认用户为 root
USER root

# 默认工作目录
WORKDIR /workspace
