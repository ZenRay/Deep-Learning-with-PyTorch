FROM continuumio/anaconda3

ENV DEBIAN_FRONTEND noninteractive

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple \
        torch \
        torchvision 

ENV NOTEBOOK_DIR=/Documents \
	NOTEBOOK_IP=0.0.0.0 \
	NOTEBOOK_PORT=8888


CMD jupyter lab \
	--notebook-dir=${NOTEBOOK_DIR} \
	--ip=${NOTEBOOK_IP} \
	--port=${NOTEBOOK_PORT} \
	--NotebookApp.token='' \
	--no-browser \
	--allow-root