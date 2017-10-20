# It city 2017

This repo contains some helpers and scripts for speech on conference Gorod

## Prerequisites
1. Install docker

    ```
    sudo curl -sSL https://get.docker.com/ | sh && sudo groupadd docker 2>/dev/null && sudo gpasswd -a ${USER} docker && sudo service docker restart
    ```

1. [Install docker-compose](https://github.com/docker/compose/releases)

1. [Install gcloud SDK](https://cloud.google.com/sdk/)

    ```
    curl -sSL https://sdk.cloud.google.com | bash
    ```

1. Authenticate to Google Cloud Platform

    ```
    gcloud auth login
    ```
