# FROM python:3.8
# WORKDIR /opt
# RUN apt-get update && apt-get install -y  cmake automake gcc g++ subversion python3-dev build-essential libpoppler-cpp-dev pkg-config
# RUN apt-get install ffmpeg libsm6 libxext6  -y
# RUN apt-get install zbar-tools -y
# # Install Chrome WebDriver
# RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
#     mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
#     curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
#     unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
#     rm /tmp/chromedriver_linux64.zip && \
#     chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
#     ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver
# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt
# COPY . .
# CMD [ "python3", "app.py"]





FROM python:3.8 AS compile-image
WORKDIR /opt
RUN apt-get update && apt-get install -y  cmake automake gcc g++ subversion python3-dev build-essential libpoppler-cpp-dev pkg-config ffmpeg libsm6 libxext6  zbar-tools 



# Install Chrome WebDriver
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
    mkdir -p /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip && \
    unzip -qq /tmp/chromedriver_linux64.zip -d /opt/chromedriver-$CHROMEDRIVER_VERSION && \
    rm /tmp/chromedriver_linux64.zip && \
    chmod +x /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver && \
    ln -fs /opt/chromedriver-$CHROMEDRIVER_VERSION/chromedriver /usr/local/bin/chromedriver

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

FROM python:3.8-alpine 
WORKDIR /opt 
COPY --from=compile-image /opt .
CMD [ "python3", "app.py"]



nginx.ingress.kubernetes.io/proxy-connect-timeout: "3600"
    nginx.ingress.kubernetes.io/proxy-read-timeout: "3600"
    nginx.ingress.kubernetes.io/proxy-send-timeout: "3600"






    RUN sed -i '/^;.*extension=php_gettext\.dll/s/^;//' /usr/local/etc/php/php.ini-production && sed -i '/^;.*extension=php_gettext\.dll/s/^;//' /usr/local/etc/php/php.ini-development



