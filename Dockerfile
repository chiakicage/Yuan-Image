FROM nvcr.io/nvidia/pytorch:23.01-py3
RUN pip install pytorch-lightning transformers datasets torchtyping tqdm jieba deepspeed accelerate && pip uninstall -y torchtext && pip install -U --pre triton
RUN cd ~ && git clone https://github.com/hpcaitech/ColossalAI.git && cd ColossalAI && pip install -r requirements/requirements.txt && pip install -r requirements/requirements.txt
RUN cd ~ && git clone --recursive https://github.com/HazyResearch/flash-attention.git && cd flash-attention && python setup.py install
# RUN echo 1 > /proc/sys/kernel/perf_event_paranoid

