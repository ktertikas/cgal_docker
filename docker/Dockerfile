FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
    build-essential cmake \
    libopencv-dev \
    libsuitesparse-dev \
    tar \
    libboost-all-dev libgmp10-dev \
    libmpfr-dev zlib1g-dev \
    libeigen3-dev libglew1.5-dev libipe-dev \
    libmpfi-dev libqglviewer-dev-qt5 libqt5svg5-dev qtscript5-dev\
    libinsighttoolkit4-dev libtbb-dev git wget \
    && rm -rf /var/lib/apt/lists/*

# installing cgal and downloading examples
RUN cd /home && wget https://github.com/CGAL/cgal/releases/download/v5.3/CGAL-5.3.tar.xz --no-check-certificate && wget https://github.com/CGAL/cgal/releases/download/v5.3/CGAL-5.3-examples.tar.xz --no-check-certificate
RUN cd /home && tar xvf CGAL-5.3.tar.xz && tar xvf CGAL-5.3-examples.tar.xz && rm CGAL-5.3.tar.xz CGAL-5.3-examples.tar.xz 
RUN cd /home/CGAL-5.3 && mkdir build && cd build && cmake .. && make install

WORKDIR /home
