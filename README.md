# Purpose

Fast and easy deployment [MySQL](https://www.mysql.com/) for development.


# Prerequisites

You have to install [Docker](https://www.docker.com/) on your system:
- [Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
- [Mac](https://docs.docker.com/docker-for-mac/install/)
- [Windows](https://docs.docker.com/docker-for-windows/install/)
- [AWS](https://docs.docker.com/docker-for-aws/)
- [Azure](https://docs.docker.com/docker-for-azure/)


# Deployment

- Copy the repository typing `git clone` in your Terminal.
- Run a command `./create.sh` in the Terminal. It creates a docker container with MySQL database.
- You can get access to created database through `127.0.0.1:3306`.
- All data persist in `data` subdirectory.


# Tools
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)


# Links
- [Basic Steps for MySQL Server Deployment with Docker](https://dev.mysql.com/doc/mysql-installation-excerpt/5.5/en/docker-mysql-getting-started.html)
- [More Topics on Deploying MySQL Server with Docker](https://dev.mysql.com/doc/mysql-installation-excerpt/5.5/en/docker-mysql-more-topics.html)
- [MySQL Docker official image](https://hub.docker.com/_/mysql)