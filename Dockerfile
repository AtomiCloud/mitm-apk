FROM node:21

RUN apt-get update && \
    apt-get install -y --no-install-recommends default-jre-headless=2:1.17-74 && \
    wget --progress=dot:giga -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.5.0.jar && \
    wget --progress=dot:giga -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN npm i -g apk-mitm

CMD ["sh", "-c", "sleep infinity"]