FROM nvcr.io/nvidia/pytorch:22.12-py3

RUN pip install transformers datasets torchtyping triton deepspeed flash-attn jieba && pip uninstall -y torchtext
RUN cd ~ && git clone https://github.com/hpcaitech/ColossalAI.git && cd ColossalAI && pip install -r requirements/requirements.txt
RUN cd ~ && git clone --recursive https://github.com/HazyResearch/flash-attention.git && cd flash-attention/csrc/fused_dense_lib && pip install . && cd ../xentropy && pip install . && cd ../layer_norm && pip install .
# RUN echo 1 > /proc/sys/kernel/perf_event_paranoid

