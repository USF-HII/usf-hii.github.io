---
layout: page
---

## HII-HPC Cluster

In partnership with [USF Research Computing](http://www.usf.edu/it/research-computing/),
the [Health Informatics Institute](http://www.hii.usf.edu)
offers the HII-HPC Cluster for large-scale bioinformatics workloads.

### Overview

- [Connection](hii-hpc/connect.html)
- [Linux](hii-hpc/linux.html)
- [Interactive Shell](hii-hpc/interactive.html)
- [Modules](hii-hpc/modules.html)
- [Python Virtual Environments](hii-hpc/python-virtualenv.html)
- [Frequently Asked Questions](hii-hpc/faq.html)
- [Getting Help](hii-hpc/help.html)
- Slurm
  - [Viewing Slurm Resources](hii-hpc/sinfo.html)
  - [Submitting a Slurm Job](hii-hpc/sbatch.html)
  - [Submitting a Slurm Job Array](hii-hpc/slurm-arrays.html)

### Availability

*The HII-HPC Cluster has a routine maintenance window each Thursday at 10:00 p.m. (Eastern Time Zone).<br/>
Generally no downtime is necessary but occasionally maintenance may require downtime from a few minutes up
to a maximum of 4 hours so please plan your work with this possibility in mind.*

### Slurm Documentation

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - Quickref of major Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - Translation for individuals familiar with similar HPC scheduling systems.
- [Slurm Overview](http://slurm.schedmd.com/slurm.html)

### Slurm Commands

- `sinfo` ([docs](http://slurm.schedmd.com/sinfo.html)) -
   Reports the state of partitions and nodes managed by Slurm.
- `sbatch` ([docs](http://slurm.schedmd.com/sbatch.html)) -
   Submits a job script for execution typically containing srun commands to launch parallel tasks.
- `srun`  ([docs](http://slurm.schedmd.com/srun.html)) -
   Used to submit a job for execution or initiate job steps in real time.
- `squeue` ([docs](http://slurm.schedmd.com/squeue.html)) -
   Reports the state of jobs or job steps.
- `scancel` ([docs](http://slurm.schedmd.com/scancel.html)) -
   Used to stop jobs before running/completing.
- `sacct` ([docs](http://slurm.schedmd.com/sacct.html)) -
   Show running as well as recently completed or failed jobs.

On `hii.rc.usf.edu`, you can view documentation using the `man` command, e.g. `man sbatch`.

### Slurm Partitions

Compute nodes in the cluster are grouped into partitions of compute nodes which provide the following classes of service:

- `hii02` - Partition for production jobs (partition contains the majority of the compute nodes).
- `hii-test` - Development partition.
- `hii-interactive` - Nodes in partition reserved for [Interactive Shell](hii-hpc/interactive.html)
  real-time feedback.

*Use the option `--partition=<partition>` or `-p <partition>` for slurm commands such as `sinfo`, `srun`, `sbatch`,
`squeue` to indicate the partition to use.*

You will have access to the same GPFS filesystems regardless of the partition you choose.

### Filesystems

Each user will have the following directories available on the `hii.rc.usf.edu`
as well as on any compute node in the HII-HPC Cluster via [GPFS](https://en.wikipedia.org/wiki/IBM_General_Parallel_File_System):

- `/home/<fi>/<netid>` - Home (`$HOME`) directory for an individual's own work (e.g. `/home/d/dvader`).
- `/hii/work/<fi>/<netid>` - Computational work directory for temporary, large filesets generated through research and analysis.
- `/shares/hii-<group_name>/` - Shared group directory (e.g. `/shares/hii-sith`).

*Note: Your shared team directory (e.g. `/shares/hii-sith`)
  is configured so files and folders created will be owned by the user and the user's group affiliation
  (e.g. `dvader:hii-sith` instead of `dvader:dvader`).*

### Identification

To reference your username, use the `$USER` variable:

```
hii$ echo $USER
dvader
```

To reference your NetID, Primary Group, and Group affiliation run the `id` command:

```
hii$ id
uid=1000(dvader) gid=1000(dvader) groups=1000(dvader),1001(hii-sith)
```

### Credit

Ideas and examples contained under HII-HPC Cluster Documentation are credited to the following sites:

- [https://rc.fas.harvard.edu/resources/running-jobs/](https://rc.fas.harvard.edu/resources/running-jobs/)
- [http://www.ceci-hpc.be/slurm_tutorial.html](http://www.ceci-hpc.be/slurm_tutorial.html)
- [https://cwa.rc.usf.edu/projects/research-computing/wiki](https://cwa.rc.usf.edu/projects/research-computing/wiki)
