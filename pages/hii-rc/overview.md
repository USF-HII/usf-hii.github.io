---
layout: page
---

## HII-RC

### Overview

The HII-RC cluster utilizes the [Slurm Workload Manager](http://slurm.schedmd.com), a popular High Performance Scheduler,
as one of its core infrastructure components.

#### Slurm Documentation

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

#### Slurm Commands

- `sinfo` - Reports the state of partitions and nodes managed by Slurm.
- `srun` - Used to submit a job for execution or initiate job steps in real time.
- `sbatch` - Submits a job script for execution typically containing srun commands to launch parallel tasks.
- `squeue` - Reports the state of jobs or job steps.
- `scancel` - Used to stop a job before it completes.

#### Slurm Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs

- `hii-test` - Small test partition to develop and test batch jobs

- `hii-interactive` - Small partition providing compute node shells for quick, interactive feedback.

#### Cluster Filesystems

Each user will have the following directories available:

- `/home/<fi>/<netid>` - Home directory for an individual's own work (e.g. `/home/j/jsmith`).

- `/hii/work/<fi>/<netid>` - Computational work directory for temporary, large filesets generated through research and analysis.

- `/shares/hii-<group_name>/` - Shared team directory (e.g. `/shares/hii-alpha`).

#### Identification

To reference your NetID, Primary Group, and Group affiliation run the `id` command:

```
hii$ id
uid=1000(jsmith) gid=1000(jsmith) groups=1000(jsmith),1001(hii-alpha)
```
