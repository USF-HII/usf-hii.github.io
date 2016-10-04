---
layout: page
---

## HII-RC

### Overview

The HII-RC cluster utilizes [Slurm](http://slurm.schedmd.com) for scheduling
computational workloads on behalf of faculty, staff, and external analytical partners.

#### Slurm Documentation

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - Quickref of major Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - Translation for individuals familiar with similar HPC scheduling systems.
- `man slurm`, `man sinfo`, `man sbatch`, `man srun`, `man squeue`, `man scancel`, `man sacct`

#### Slurm Commands

- `sinfo` - Reports the state of partitions and nodes managed by Slurm.
- `sbatch` - Submits a job script for execution typically containing srun commands to launch parallel tasks.
- `srun` - Used to submit a job for execution or initiate job steps in real time.
- `squeue` - Reports the state of jobs or job steps.
- `scancel` - Used to stop a job before it completes.
- `sacct` - Show what has been run.

#### Slurm Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs

- `hii-test` - Small test partition to develop and test batch jobs

- `hii-interactive` - Small partition providing compute node shells for quick, interactive feedback.

#### Filesystems

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
