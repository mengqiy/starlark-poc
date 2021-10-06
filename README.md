## How to run this PoC

First build the docker container. You don't need to change the image name here,
since we won't push the image to a remote registry.

```shell
$ docker build -t gcr.io/mengqiy/starlark:v0 .
```

Run the hydration pipeline:

```shell
$ kpt fn render example --image-pull-policy never
```
