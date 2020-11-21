# miniconda4ml

Dockerbuild file to create a miniconda3 environment for machine learning projects

Using continuumio/miniconda as a base, an environment file is copied and then created inside miniconda.

# Usage

You can create a new docker container with this environment created and activated using the following command

``` docker build -t containerName .
docker run -it containername```
