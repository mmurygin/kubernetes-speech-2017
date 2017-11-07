# It city 2017

This repo contains some helpers and scripts for speech on conference Gorod

## Prerequisites

1. Install docker

    ```
    sudo curl -sSL https://get.docker.com/ | sh &&  sudo gpasswd -a ${USER} docker
    ```

1. [Install docker-compose](https://github.com/docker/compose/releases)

1. [Install gcloud SDK](https://cloud.google.com/sdk/)

    ```
    curl -sSL https://sdk.cloud.google.com | bash
    ```

1. Logout and login

1. Install kubectl

    ```
    gcloud components install kubectl
    ```

1. Authenticate to Google Cloud Platform

    ```
    gcloud auth login
    ```

## Manual deploy

1. deploy

    ```
    ./manual/create-vm.sh
    ```
2. cleanup

    ```
    ./manual/cleanup.sh
    ```

## Deploy in docker container

1. checkout source code and build image

1. deploy

    ```
    ./docker/create-vm.sh
    ```

1. cleanup

    ```
    ./docker/cleanup.sh
    ```

## Deploy in kubernetes cluster

1. create cluster

    ```
    ./kubernet/create-cluster.sh
    ```

1. deploy app

    ```
    ./kubernet/deploy.sh
    ```

1. cleanup

    ```
    ./kubernetes/cleanup.sh
    ```

