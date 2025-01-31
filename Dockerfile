ARG PYTORCH="1.1.0"
ARG CUDA="10.0"
ARG CUDNN="7.5"

FROM pytorch/pytorch:${PYTORCH}-cuda${CUDA}-cudnn${CUDNN}-devel

RUN apt-get update && apt-get install -y libglib2.0-0 libsm6 libxrender-dev libxext6 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install code
RUN conda install cython -y && conda clean --all
RUN git clone https://github.com/LMinionY/TianchiGuangdong2019_2th-cizhenshi-.git /workspace
WORKDIR /workspace
#RUN pip install --no-cache-dir -e .
