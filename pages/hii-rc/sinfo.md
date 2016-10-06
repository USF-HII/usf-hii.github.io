---
layout: page
---

## [HII/RC Cluster](/pages/hii-rc.html)

### sinfo ([Manual](http://slurm.schedmd.com/sinfo.html))

`sinfo` reports the state of a Slurm partition its compute nodes.

---

For a quick overview of a partition:

```
hii$ sinfo -p hii02
PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
hii02        up   infinite      1    mix svc-3024-1-11
hii02        up   infinite     39  alloc svc-3024-2-[1-8,11-15,18-24],svc-3024-4-[1-19]
hii02        up   infinite     42   idle svc-3024-3-[1-42]
```

The above example shows that 42 nodes are completely available (`idle`), 1 node has some resources available
(`mixed`), and 39 nodes are currently allocated and not available (`alloc`).

---

To view detailed information on a partition, here is a useful "power invocation" of `sinfo` giving
additional memory and cpu information in a clean format:

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

