FROM bh.cr/balenalabs/sensor-armv7hf

WORKDIR /usr/src/app

RUN install_packages \
    build-essential

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY sensor.py sensor.py

COPY start.sh start.sh

CMD ["bash", "start.sh"]
