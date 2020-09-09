# LL-Photon-PiGen

_Pi-gen tool to create a Limelight image of [PhotonVision](https://github.com/PhotonVision/photonvision)._


## Dependencies

pi-gen runs on Debian based operating systems. Currently it is only supported on
either Debian Buster or Ubuntu Xenial and is known to have issues building on
earlier releases of these systems. On other Linux distributions it may be possible
to use the Docker build described below.

## Docker Build

To build:

```bash
./build-docker.sh
```

If you get a `bash: ./build-docker.sh: Permission denied` error, run:

```bash
find ./ -name "*.sh" -exec chmod a+x {} \;
```

If everything goes well, your finished image will be in the `deploy/` folder.
You can then remove the build container with `docker rm -v pigen_work`.

After a successful build, the build container is removed by default.