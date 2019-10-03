FROM tensorflow/tensorflow:1.13.2-gpu-py3

RUN apt update

RUN pip install --upgrade pip

# for opencv
RUN apt -y install build-essential \
    pkg-config \
    libjpeg-dev \
    libpng-dev \
    libtiff5-dev \
    libopenexr-dev \
    libavcodec-dev \
    libavformat-dev \
    yasm \
    libfaac-dev \
    libopencore-amrnb-dev \
    libopencore-amrwb-dev \
    libtheora-dev \
    libvorbis-dev \
    libxvidcore-dev \
    libx264-dev \
    libswscale-dev \
    libdc1394-22-dev \
    libv4l-dev \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libtbb2 \
    libtbb-dev \
    libeigen3-dev

RUN pip install --upgrade \
    scipy \
    jupyterlab \
    pandas \
    scikit-image \
    scikit-learn \
    opencv-python \
    pydot

RUN apt -y install vim \
    tmux \
    libsm6 \
    libxext6 \
    libxrender-dev \
    graphviz

EXPOSE 6006
