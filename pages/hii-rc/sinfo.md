---
layout: page
---

## HII-RC Cluster / Slurm

### sinfo

To view detailed information on a partition, we suggest the following invocation of the Slurm `sinfo` command:

```
hii$ sinfo --partition=<partition> --exact --format="%20P %8D %8c %12m %12a %12T %l"
```

For example:

```
hii$ sinfo --partition=hii02 --exact --format="%20P %8D %8c %12m %12a %12T %l"
PARTITION            NODES    CPUS     MEMORY       AVAIL        STATE        TIMELIMIT
hii02                1        20       128951       up           mixed        infinite
hii02                39       20       128951       up           allocated    infinite
hii02                2        12       64380        up           idle         infinite
hii02                40       16       129018       up           idle         infinite
```

The example command's output indicates:

- 1 node partially allocated with some resources still available (`mixed`)
- 39 nodes each with 20 cpus and 128GB occupied running other jobs (`allocated`)
- 2 nodes each with 12 cpus each and 64GB of RAM are idle and available for new jobs (`idle`)
- 40 nodes each with 16 cpus and 128GB of RAM are idle and available for new jobs (`idle`)
