ARG BASE_CONTAINER=overrideme
FROM $BASE_CONTAINER

LABEL Aaron Cody <aaron@aaroncody.com>

USER root

ARG DEBIAN_FRONTEND=noninteractive

ADD ./*.sh ./

ADD ./*.txt ./

ADD ./test/ ./test/

ADD ./base-os.sh ./base-os.sh

#ADD ./inst-ai-stack.sh ./inst-ai-stack.sh

ADD ./keys.tar.xz ~/.ssh/keys.tar.xz

RUN chmod 700 ~/.ssh
RUN chmod 644 ~/.ssh/config
RUN chmod 600 ~/.ssh/id_rsa
RUN chmod 644 ~/.ssh/id_rsa.pub

RUN find . -name "*.sh" | xargs chmod +x

ENV SUDO ""

ENV TERM linux

#ENV PS1 '🐳 ai-dev # '

ENV NO_NVIDIA_DRIVER 1

ENV NO_NVIDIA_CUDA 1

ENV NO_DOCKER 1

ENV NO_VM 1

ENV NO_PASSWORDLESS 1

ENV NO_MATHEMATICA 1

ENV NO_NVTOP 1

ENV NO_SUBLIME 1

ENV NO_VSCODE 1

ENV NO_BREW 1

EXPOSE 8080/tcp
EXPOSE 4000/tcp
EXPOSE 4011-4999/udp

RUN ./base-os.sh

#RUN ./inst-ai-stack.sh