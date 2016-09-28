---
layout: page
---

The [Health Informatics Institute](http://www.hii.usf.edu) offers large-scale, distributed, high-performance computational resources for Bioinformatics research.

## Resources

### USF RC HII Cluster

In partnership with [USF Research Computing](http://www.usf.edu/it/research-computing/) HII offers
a High Performance Computing Cluster for Bioinformatics research conducted by its faculty, staff and external partners.

The USF RC HII Cluster is a subset of the USF Research Computing CIRCE Infrastructure and utilizes the
[Slurm Workload Manager](http://slurm.schedmd.com)

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

#### Cluster Documentation

- [Connection Information](pages/usf-rc-hii/connection.html)
- [Interactive Sessions](pages/usf-rc-hii/interactive.html)

#### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs
- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development.
   Please **DO NOT** run batch jobs on this partition - use `hii-test` or `hii02` for batch jobs.

#### Identification

To reference your NetID, Primary Group, and Group affiliation:

```
hii$ id
uid=1000(jsmith) gid=1000(jsmith) groups=1000(jsmith),1001(hii-broad)
```

#### Filesystems

Each external analytical partner will have the following directories allocated to them:

- `/home/<fi>/<netid>` - Home directory for an individual's own work (e.g. `/home/j/jsmith`).
- `/hii/work/<fi>/<netid>` Computational work directory for temporary, large filesets generated through research and analysis.
- `/shares/hii-<group_name>/` - Shared team directory (e.g. `/shares/hii-broad`)
