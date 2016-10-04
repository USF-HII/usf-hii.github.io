---
layout: page
---

## RC-HII

### Overview

The RC-HII High Performance Computing Cluster The cluster utilizes the [Slurm Workload Manager](http://slurm.schedmd.com),
a popular High Performance Scheduler utilized by some of the most powerful supercomputers in the world.

#### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs

- `hii-test` - Small test partition to develop and test batch jobs

- `hii-interactive` - Small partition providing compute node shells for quick, interactive feedback.

#### Filesystems

Each user will have the following directories allocated to them:

- `/home/<fi>/<netid>` - Home directory for an individual's own work (e.g. `/home/j/jsmith`).

- `/hii/work/<fi>/<netid>` - Computational work directory for temporary, large filesets generated through research and analysis.

- `/shares/hii-<group_name>/` - Shared team directory (e.g. `/shares/hii-alpha`).

#### Identification

To reference your NetID, Primary Group, and Group affiliation run the `id` command:

```
hii$ id
uid=1000(jsmith) gid=1000(jsmith) groups=1000(jsmith),1001(hii-alpha)
```
