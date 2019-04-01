FROM mysql:8.0.15

RUN apt update && apt install -y make locales less && \
    rm -rf /var/lib/apt/lists/*

RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
