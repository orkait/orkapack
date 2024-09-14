# Verdaccio Private NPM Registry (Alpine Docker) - Orkait

This repository provides a Dockerized solution for setting up a private NPM registry using [Verdaccio](https://verdaccio.org/), tailored for the needs of **Orkait Solution**. 

Built on **Alpine Linux**, this image is optimized for small size, faster performance, and ease of deployment. 
You can deploy this solution locally or to cloud platforms like [Railway.app](https://railway.app) using **Nixpacks**.

## Features

-   **Lightweight and Efficient**: Alpine Linux base reduces image size and resource usage.
-   **Customizable**: Easily modify Verdaccio's configuration to suit Orkait's internal npm registry needs.
-   **Persistent Data**: Ensures npm packages and configuration are saved across container restarts.
-   **Simple Cloud Deployment**: Supports easy deployment on cloud services, including Railway.

---

## Table of Contents

-   [Prerequisites](#prerequisites)
-   [Quick Start](#quick-start)
-   [Running with Docker Compose](#running-with-docker-compose)
-   [Deploying to Railway.app](#deploying-to-railwayapp)
-   [Configuration](#configuration)
-   [Support](#support)
-   [License](#license)

---

## Prerequisites

Before setting up the private npm registry for Orkait, ensure the following tools are installed:

-   [Docker](https://www.docker.com/get-started)
-   [Docker Compose](https://docs.docker.com/compose/) (optional for multi-container setups)
-   (For cloud deployment) A [Railway.app](https://railway.app) account and the [Railway CLI](https://docs.railway.app/develop/cli).

---

## Quick Start

Follow these steps to quickly set up a private NPM registry using Docker.

1. **Clone this repository**:

    ```bash
    git clone https://github.com/orkait/verdaccio-alpine.git
    cd verdaccio-alpine
    ```
