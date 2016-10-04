---
layout: page
---

## Overview

The [Health Informatics Institute](http://www.hii.usf.edu) offers large-scale, distributed, high-performance computational resources for Bioinformatics research.

## Resources

### HII-RC Cluster

In partnership with [USF Research Computing](http://www.usf.edu/it/research-computing/), HII offers
a High Performance Computing (HPC) Cluster to its faculty, staff and external partners.
The cluster utilizes the [Slurm Workload Manager](http://slurm.schedmd.com), a popular High Performance
Scheduler utilized by many national laboratories including [LLNL](https://www.llnl.gov/),
[ORNL](https://www.ornl.gov/).

As of November 2015, TOP500 list of most powerful computers in the world indicates that Slurm is the workload manager on six of the
top ten systems. Some of the systems in the top ten running Slurm include Tianhe-2, a 33.86 PetaFlop system at NUDT, IBM Sequoia, an
IBM Bluegene/Q with 1.57 million cores and 17.2 Petaflops at Lawrence Livermore National Laboratory; Piz Daint a 7.78 PetaFlop Cray
computer at Swiss National Supercomputing Centre, Stampede, a 5.17 PetaFlop Dell computer at the Texas Advance Computing Center;[4]
and Vulcan, a 4.29 Petaflop IBM Bluegene/Q at Lawrence Livermore National Laboratory;.[5]


#### Cluster Documentation

- [Connection](pages/usf-rc-hii/connection.html)
- [Interactive](pages/usf-rc-hii/interactive.html)
- [UNIX](pages/usf-rc-hii/linux.html)
- [Slurm](pages/usf-rc-hii/slurm.html)
- [Modules](pages/usf-rc-hii/modules.html)

#### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs
- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development.

#### Filesystems

Each external analytical partner will have the following directories allocated to them:

- `/home/<fi>/<netid>` - Home directory for an individual's own work (e.g. `/home/j/jsmith`).
- `/hii/work/<fi>/<netid>` - Computational work directory for temporary, large filesets generated through research and analysis.
- `/shares/hii-<group_name>/` - Shared team directory (e.g. `/shares/hii-broad`).

#### Identification

To reference your NetID, Primary Group, and Group affiliation run the `id` command:

```
hii$ id
uid=1000(jsmith) gid=1000(jsmith) groups=1000(jsmith),1001(hii-broad)
```
