FROM continuumio/miniconda3

WORKDIR /root

RUN apt-get update && apt-get install -y \
	build-essential \
	git \
	&& rm -rf /var/lib/apt/lists/*


RUN conda update -n base -c defaults conda

COPY environment.yml .

RUN conda env create -f environment.yml

COPY bashrc ./.bashrc

ENTRYPOINT ["/bain/bash", "-c"]
