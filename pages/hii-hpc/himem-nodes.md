---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### High Memory Nodes

Two high-memory nodes have been recently added to the `hii02` partition with the following characteristics:

- CPU: 28 Xeon E5-2650 v4 @ 2.60GHz cores
- RAM:  1 TB RAM @ 2400 MHz
- Scratch Space: 3 TB RAID-0 Intel SSD NVMe (mounted on `/tmp`)

Please only utilize these nodes if you know you need these levels of resources above-and-beyond
the normal 16 or 20 core nodes each available with 128 GB of RAM.

To utilize one of the high-memory nodes add
the option  `--constraint=mem_1T` or `--constraint=fast_scratch` to your your `sbatch` invocation.

Alternatively, if you specify a high-memory requirement (e.g. `--mem=200G`), Slurm will schedule
your job on one of these nodes since they are the only resources likely available to satisfy the request.
