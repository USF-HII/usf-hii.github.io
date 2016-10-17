---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Slurm

The HII-HPC utilizes the [Slurm Workload Manager](https://en.wikipedia.org/wiki/Slurm_Workload_Manager) to submit, monitor, and manage computational
work on its compute nodes.

Slurm a open-source job scheduler by many of the world's
supercomputers and high performance computing clusters.

#### Partitions

Compute nodes in the cluster are grouped into partitions of compute nodes which provide the following classes of service:

- `hii02` - Partition for production jobs (partition contains the majority of the compute nodes).
- `hii-test` - Development partition.
- `hii-interactive` - Nodes in partition reserved for [Interactive Shell](hii-hpc/interactive.html)
  real-time feedback.

*Use the option `--partition=<partition>` or `-p <partition>` for slurm commands such as `sinfo`, `srun`, `sbatch`,
`squeue` to indicate the partition to use.*

Note: You will have access to the same GPFS filesystems regardless of the partition you choose.

#### Commands

The following are the most common commands used when interacting with Slurm:

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

#### HII Walkthroughs

- [Slurm Interactive Shell](hii-hpc/interactive.html)
- [Slurm Resources](hii-hpc/sinfo.html)
- [Slurm Jobs](hii-hpc/sbatch.html)
- [Slurm Job Arrays](hii-hpc/slurm-arrays.html)

#### Other Resources

- [Slurm Overview](http://slurm.schedmd.com/slurm.html)
- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - Quickref of major Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - Translation for individuals familiar with similar HPC scheduling systems.

