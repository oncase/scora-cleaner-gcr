FROM alpine:latest
LABEL "repository"="https://github.com/oncase/scora-cleaner-gcr"
LABEL "homepage"="https://github.com/oncase/scora-cleaner-gcr"
LABEL "maintainer"="Oncase"

# install google cloud sdk
RUN curl -sSL https://sdk.cloud.google.com > /tmp/gcl && bash /tmp/gcl --install-dir=/root/gcloud --disable-prompts 

ENV PATH $PATH:/root/gcloud/google-cloud-sdk/bin

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x ./entrypoint.sh 
ENTRYPOINT ["/entrypoint.sh"]