---
layout: page
---

The [Health Informatics Institute](http://www.hii.usf.edu) offers large-scale, distributed, high-performance computational resources for Bioinformatics research.

## Resources

### HII-RC Cluster

In partnership with [USF Research Computing](http://www.usf.edu/it/research-computing/), HII offers
a High Performance Computing (HPC) Cluster to its faculty, staff and external partners.
The cluster utilizes the [Slurm Workload Manager](http://slurm.schedmd.com), a popular High Performance
Scheduler utilized by many national laboratories including [LLNL](https://www.llnl.gov/).

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
