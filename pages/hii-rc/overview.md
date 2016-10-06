---
layout: page
---

## HII/RC Cluster

### Overview

The HII/RC cluster utilizes [Slurm](http://slurm.schedmd.com) for scheduling
computational workloads on behalf of faculty, staff, and external analytical partners.

#### Slurm Documentation

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - Quickref of major Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - Translation for individuals familiar with similar HPC scheduling systems.
- `man slurm` ([online](http://slurm.schedmd.com/slurm.html)),
  `man sinfo`
  `man sbatch`([online](http://slurm.schedmd.com/sinfo.html)),
  `man srun` ([online](http://slurm.schedmd.com/sinfo.html)),
  `man squeue` ([online](http://slurm.schedmd.com/sinfo.html)),
  `man scancel` ([online](http://slurm.schedmd.com/sinfo.html)),
  `man sacct` ([online](http://slurm.schedmd.com/sinfo.html))`

#### Slurm Commands

- `sinfo` ([manual](http://slurm.schedmd.com/sinfo.html)/([overview](sinfo.html)) - Reports the state of partitions and nodes managed by Slurm.
- `sbatch` ([overview](sbatch.html)) - Submits a job script for execution typically containing srun commands to launch parallel tasks.
- `srun` ([overview](srun.html)) - Used to submit a job for execution or initiate job steps in real time.
- `squeue` ([overview](squeue.html)) - Reports the state of jobs or job steps.
- `scancel` ([overview](scancel.html)) - Used to stop jobs before running/completing.
- `sacct` ([overview](sacct.html)) - Show running as well as recently completed or failed jobs.

On `hii.rc.usf.edu`, you can view documentation using the `man` command, e.g. `man sbatch`.

#### Examples

- [Slurm Job Arrays](slurm-arrays.html)

#### Slurm Partitions

Compute nodes in the cluster are grouped into partitions of compute nodes which provide the following classes of service:

- `hii02` - Production computationally-intensive jobs.
- `hii-test` - Developmental level of resources prior to submitting to a computationally-intensive cluster.
- `hii-interactive` - High-powered single compute node interactive shell to develop or run a single job with real-time feedback.

#### Filesystems

Each user will have the following directories available:

- `/home/<fi>/<netid>` - Home directory for an individual's own work (e.g. `/home/j/jsmith`).
- `/hii/work/<fi>/<netid>` - Computational work directory for temporary, large filesets generated through research and analysis.
- `/shares/hii-<group_name>/` - Shared team directory (e.g. `/shares/hii-alpha`).

**Note: The shares directory (e.g. `/shares/hii-alpha`)
  is configured so files and folders created will be owned by the user and the user's group affiliation
  (e.g. `jsmith:hii-alpha` instead of `jsmith:jsmith`).**

#### Identification

To reference your username, use the `$USER` variable:

```
hii$ echo $USER
jsmith
```

To reference your NetID, Primary Group, and Group affiliation run the `id` command:

```
hii$ id
uid=1000(jsmith) gid=1000(jsmith) groups=1000(jsmith),1001(hii-alpha)
```
