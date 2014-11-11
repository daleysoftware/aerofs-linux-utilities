Docker & AeroFS
===

The scripts and configuration files in this repository make it easy to run AeroFS in a docker container.

This is useful for a variety of reasons, but my favorite use case is running the AeroFS Team Server in a docker container to improve the availability of your AeroFS system. If you already have a number of services running in containers on your infrastructure, why not add AeroFS to the list?

Prerequisites
---

- `docker.io`
- `curl`
- `python`
- `python-pip`
- The pip module `colorama`.

Usage
---

1. Build the AeroFS docker image. The image in this repository is based on Ubuntu 14.04.

```
./build-aerofs-image.sh
```

2. Run/launch the docker container.

```
./run-aerofs-container.sh
```

3. Configure the container. Here you provide the container with your AeroFS credentials and specify whether you would like to run the normal AeroFS client software or the AeroFS team server. Configuration is made easy using some python scripts that are part another one of my projects, [aerofs-upstart](https://github.com/mpillar/aerofs-upstart). Specifically, we are making use of the "Quick Install" path for installing AeroFS with upstart functionality.

```
./config-aerofs-container.sh <container-id>
```

After that, your AeroFS container will be up and running.

Notes
---

This is the most basic installation pattern. To enhance this setup, you might want to use a [data volume](http://docs.docker.com/userguide/dockervolumes/) or some similar, more advanced configuration.

Todo
---

This sub-project is a work in progress and is not fully functional yet.

Still TODO/TOFIX:

1. Can't install regular client on aufs; need volume for that.
2. Docker doesn't play nice with upstart; need to make some improvements there.
