# Kubernetes Snaps

## Build everything

Run `make` here and check for the results in the `build/` directory.

## Build one snap

To build a specific snap, run `make` with the name of the snap, e.g., for
kubectl:

```sh
$ make kubectl
```

The result will again be in the `build/` directory.

## Cleaning up

Simply run `make clean` to remove everything except downloaded resources:

```sh
$ make clean
```
