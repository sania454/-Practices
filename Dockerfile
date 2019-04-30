FROM ubuntu:16.04

RUN apt-get -y update && \
        apt-get -y install imagemagick xvfb x11-apps libgtk-3-0  libdbus-glib-1-2 iputils-ping

ADD ./launch_calc.sh /home/simpleuser/

RUN chmod +x /home/simpleuser/launch_calc.sh

CMD ["bash"]
