## Running notebooks via Docker

To run the notebook from a docker image, first install docker, e.g., via homebrew

`brew install --cask docker` 

For the purpose of this here, we are going use the Jupyter Docker Stack [jupyter/datascience-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook), which already contains most of the packages we will need. Those additional ones, are included in `requirements.txt`.

Next, we build a docker image from the `Dockerfile` from within this directory:

`docker build --rm -t jupyter/datascience-notebook-dmacp .`

Start the image:
`docker run -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$PWD":/home/jovyan/work jupyter/datascience-notebook-dmacp`


## Mapping AC contributions by similarity

View as
- [Static webpage](http://uclab.fh-potsdam.de/dmacp/umap_dmacp.html)
- [Jupyter notebook](https://github.com/nrchtct/umap_dmacp/blob/master/umap_dmacp.ipynb)
- [Binder](https://mybinder.org/v2/gh/nrchtct/umap_dmacp/HEAD)