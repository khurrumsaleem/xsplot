
FROM ubuntu:20.04

RUN apt-get --yes update && apt-get --yes upgrade


# # Install Packages Required
RUN apt-get --yes install g++ 
RUN apt-get --yes install cmake 
RUN apt-get --yes install libhdf5-dev 
RUN apt-get --yes install git
RUN apt-get install -y unzip

RUN apt-get install -y python3
RUN apt-get install -y python3-pip

# RUN apt-get install -y python3-pip
# RUN apt-get install -y python3-dev
# RUN apt-get install -y python3-setuptools
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# RUN apt-get install -y ipython3
# RUN apt-get update
# RUN apt-get install -y python3-tk


# #Install Packages Optional
# RUN apt-get --yes install hdf5-tools
# RUN apt-get --yes install wget
# RUN apt-get --yes install dpkg
# RUN apt-get --yes install libxkbfile1

# #Install Packages Optional for distributed memory parallel simulations
# RUN apt install --yes mpich libmpich-dev
# RUN apt install --yes openmpi-bin libopenmpi-dev

# RUN apt-get --yes install libblas-dev 
# # RUN apt-get --yes install libatlas-dev 
# RUN apt-get --yes install liblapack-dev
# RUN apt-get install --yes libsilo-dev


# # Clone and install NJOY2016
RUN git clone https://github.com/njoy/NJOY2016 /opt/NJOY2016 && \
    cd /opt/NJOY2016 && \
    mkdir build && cd build && \
    cmake -Dstatic=on .. && make 2>/dev/null && make install

# RUN rm /usr/bin/python
# RUN ln -s /usr/bin/python3 /usr/bin/python


# # installs OpenMc from source 
# RUN cd opt && \
#     git clone https://github.com/openmc-dev/openmc.git && \  
#     cd openmc && \
#     git checkout develop && \
#     mkdir build && cd build && \
#     cmake .. && \
# #    cmake -Ddebug=on .. && \
#     make && \
#     make install

# RUN cd /opt/openmc && pip3 install .




# RUN pip3 install streamlit



# ARG CACHEBUST=1
# RUN git clone https://github.com/Shimwell/xsplot.git

# WORKDIR /xsplot

# ENTRYPOINT ["streamlit", "run", "gui.py"]