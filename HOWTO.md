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