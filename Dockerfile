FROM jupyter/minimal-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"
# Modified by Lucas Bellomo

CMD /opt/conda/bin/jupyter lab --ip=0.0.0.0 --port 8888 --no-browser
