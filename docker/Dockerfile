ARG BASE_CONTAINER=nvidia/cuda:11.0-cudnn8-runtime-ubuntu20.04
FROM $BASE_CONTAINER

LABEL Aaron Cody <aaron@aaroncody.com>

USER root

ADD inst/ .

ENV NO_NVIDIA_DRIVER 1

ENV NO_NVIDIA_CUDA 1

ENV NO_DOCKER 1

ENV NO_VM 1

ENV NO_MATHEMATICA 1

RUN bash -c ./inst/base-os.sh

RUN bash -c ./inst/inst-ai-stack.sh