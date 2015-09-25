#!/bin/sh

#
# First upgrade apt-get
#

sudo apt-get -y update
sudo apt-get -y upgrade

#
# Install numpy/scipy/theano requirements
#

sudo apt-get -y install make python-dev python-setuptools libblas-dev \
    gfortran g++ python-pip python-numpy python-scipy liblapack-dev

#
# Install CUDA
#

sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update
sudo apt-get install cuda