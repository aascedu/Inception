<center>

# Inception

![frontpage](https://i.imgur.com/PnnmJda.png)

This project is an Administration System related exercise.

</center>

## Table of Contents

- [About](#about)
- [Features](#features)
- [Usage](#usage)

## About

This project aims to broaden your knowledge of system administration by using Docker.
You will virtualize several Docker images, creating them in your new personal virtual
machine.

## Features

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (it must be installed and
configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.

## Usage

### Instructions

**1. Building & launching the project**

To build and up the project, run:

```shell
$ sudo make
```

It should output something like this:

![built](https://i.imgur.com/8jb6umJ.png)

then access this url :
```shell
$ https://aascedu.42.fr
```

**2. Special Make Rules**

If the project is already built, you can up the project by running:

```shell
$ sudo make up
```
To down the project, run:

```shell
$ sudo make down
```

To clean the project, run:

```shell
$ sudo make clean
```

and 

```shell
$ sudo make prune
```
