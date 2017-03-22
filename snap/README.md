# Kubernetes Snaps

## Build everything

Run `./docker-build.sh` here and check for the results in the `build/` directory.

## Build one snap

To build a specific snap, run `./docker-build.sh` with the name of the snap, e.g., for
kubectl:

```sh
$ ./docker-build.sh kubectl
```

The result will again be in the `build/` directory.

## Cleaning up

Simply run `./docker-build.sh clean` to remove everything except downloaded resources:

```sh
$ ./docker-build.sh clean
```
