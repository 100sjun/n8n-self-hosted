FROM n8nio/n8n:latest

USER root

# puppeteer 의존성 패키지 설치
RUN apt-get update && apt-get install -y \
    fonts-liberation \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libdbus-1-3 \
    libdrm2 \
    libgbm1 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    xdg-utils \
    libcairo2 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    --no-install-recommends

# n8n 디렉토리로 이동하여 puppeteer 설치
WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install puppeteer

USER node 