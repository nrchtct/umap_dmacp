# Start from a core stack version
FROM jupyter/datascience-notebook

# copy additional packages onto image
COPY requirements.txt requirements.txt

# install all images in requirements.txt
RUN pip install -r requirements.txt

# after installs are done, remove requirements file
RUN rm requirements.txt

# copy repo into container
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}