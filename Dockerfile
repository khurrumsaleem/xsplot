FROM openmcworkshop/openmc_nndc

RUN pip3 install streamlit

RUN git clone https://github.com/Shimwell/xsplot.git

WORKDIR /xsplot

ENTRYPOINT ["streamlit", "run", "gui.py"]