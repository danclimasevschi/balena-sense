FROM bh.cr/balenalabs/sensor-armv7hf

WORKDIR /usr/src/app

COPY sensor.py sensor.py

COPY start.sh start.sh

CMD ["bash", "start.sh"]
