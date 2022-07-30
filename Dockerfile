FROM desktopcontainers/base-alpine
RUN apk update
RUN apk upgrade
RUN apk add chromium
RUN apk add libxcvt
ENV ENABLE_KIOSK=enable
ENV ENABLE_SUDO=enable
ENV VNC_SCREEN_DEPTH=16
ENV VNC_SCREEN_RESOLUTION=1600x1200
RUN echo "chromium-browser 'http://fireknight:8123' --kiosk" >> /container/scripts/app
