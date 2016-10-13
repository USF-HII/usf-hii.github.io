---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Viewing Slurm Resources

For a quick overview of a partition:

```
hii$ sinfo --partition=hii02
PARTITION AVAIL  TIMELIMIT  NODES  STATE NODELIST
hii02        up   infinite      1    mix svc-3024-1-11
hii02        up   infinite     39  alloc svc-3024-2-[1-8,11-15,18-24],svc-3024-4-[1-19]
hii02        up   infinite     42   idle svc-3024-3-[1-42]
```

States:

- `idle` - nodes totally available
- `mixed` - nodes are running other jobs but some resources are still available (non-allocated)
- `alloc` - nodes are running other jobs and fully allocated

The above example shows that 42 nodes are completely available (`idle`), 1 node has some resources available
(`mixed`), and 39 nodes are currently allocated and not available (`alloc`).

---

To view detailed information on a partition, here is a useful "power invocation" of `sinfo` giving
additional memory and cpu information in a clean format:

```
hii$ sinfo --partition=<partition> --exact --format="%20P %8D %8c %12m %12a %12T %l"
```

For example this command shows all nodes in the 3 HII Slurm Partitions:

```
$  sinfo --partition=hii02,hii-test,hii-interactive --exact \
>             --format="%20P %8D %8c %12m %12a %12T %l"
PARTITION            NODES    CPUS     MEMORY       AVAIL        STATE        TIMELIMIT
hii02                2        12       64380        up           mixed        infinite
hii02                34       16       129018       up           mixed        infinite
hii02                2        28       1033723      up           mixed        infinite
hii02                18       20       128951       up           allocated    infinite
hii02                22       20       128951       up           idle         infinite
hii02                6        16       129018       up           idle         infinite
hii-interactive      3        12       64380        up           idle         infinite
hii-test             9        12       64380        up           idle         infinite
```

To find the total CPUs and Memory for all three HII partitions, here is a example command:

```
$ sinfo --partition=hii02,hii-test,hii-interactive --exact --noheader \
        --format="%20P %8D %8c %12m %12a %12T %l" \
    | awk '{cpus+=($2*$3); mem+=($2*$4)} END {print cpus " CPUs and " mem/2**20 " TB"}'; date

1664 CPUs and 12.672 TB
Wed Oct 12 15:54:46 EDT 2016
```
