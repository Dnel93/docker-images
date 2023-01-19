# Limit resources in a container
## RAM
In order to limit `RAM` we can use something like following:

```docker
docker run -d -m "500mb" --name mongo mongo
```

Where `-m`is used to indicate the `RAM` memory used by the container, you can also use `gb` as a value for it.

## CPUs
Similar to this, you can set the CPUs to be used
```docker
docker run -d -m "1gb" --cpusets-cpu 0-1 --name mongo mongo
```
Here we can use `--cpusets-cpu` flag to indicate the number of cpus to be used, in this particular scenario we're using two cpus, the `0` and `1`.

# Copy Files from/to the container
This is a functionality availabe with the `cp` flag, let's see an example

```docker
docker cp index.html apache:/tmp
```
Here we're using the `cp` command to copy a local file into a directory on the container specified, it's important to notice the `container name + :` sign, after this we can specify the path

```docker
docker cp apache:/var/log/dpkg.log .
```
This is something similar to previous command but viceversa, here we're indicating the file path from the container and making a copy of it in our local path, for this particular case the location terminal at the moment it's being used

# Commiting a container
Never do that

:)