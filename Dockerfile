# FROM  hpcaitech/cuda-conda:11.3
FROM nvcr.io/nvidia/pytorch:22.11-py3
# RUN conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.3 -c pytorch
RUN sed -i "s/__version__.*$/__version__ = \'1.13.0\'/g" /usr/local/lib/python3.8/dist-packages/torch/version.py
RUN pip install transformers datasets torchtyping titans triton deepspeed flash-attn jieba colossalai
# RUN cd ~ && git clone https://github.com/hpcaitech/ColossalAI.git && cd ColossalAI && pip install -r requirements/requirements.txt
RUN cd ~ && git clone https://github.com/HazyResearch/flash-attention.git
RUN cd flash-attention/csrc/fused_dense_lib && pip install . 
RUN cd ../xentropy && pip install . 
RUN cd ../layer_norm && pip install .
# RUN echo 1 > /proc/sys/kernel/perf_event_paranoid

