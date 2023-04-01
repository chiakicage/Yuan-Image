FROM nvcr.io/nvidia/pytorch:21.05-py3
#RUN cd ~ && git clone --recursive https://github.com/alpa-projects/alpa.git && cd alpa && pip install -e ".[dev]"
#RUN cd ~/alpa/build_jaxlib && python build/build.py --enable_cuda --dev_install --bazel_options=--override_repository=org_tensorflow=$(pwd)/../third_party/tensorflow-alpa
#RUN pip install alpa
#RUN pip install jaxlib==0.3.5+cuda113.cudnn820 -f https://alpa-projects.github.io/wheels.html
#RUN pip install pytorch-lightning transformers datasets torchtyping tqdm jieba deepspeed accelerate flash-attn && pip uninstall -y torchtext && pip install -U --pre triton
#RUN cd ~ && git clone https://github.com/hpcaitech/ColossalAI.git && cd ColossalAI && pip install -r requirements/requirements.txt && pip install -r requirements/requirements.txt
# RUN cd ~ && git clone --recursive https://github.com/HazyResearch/flash-attention.git && cd flash-attention && python setup.py install
# RUN echo 1 > /proc/sys/kernel/perf_event_paranoid

