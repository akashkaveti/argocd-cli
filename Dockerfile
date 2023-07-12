FROM --platform=linux/amd64 ubuntu:20.04

RUN apt-get -y update; apt-get -y install curl
RUN curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
RUN install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
RUN rm argocd-linux-amd64


ENTRYPOINT ["argocd"] 
