---
layout: page
---

## USF RC HII Cluster / Slurm

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

### Essential Slurm Commands

- `sinfo` - Reports the state of partitions and nodes managed by Slurm.
- `srun` - Used to submit a job for execution or initiate job steps in real time.
- `sbatch` - Submits a job script for execution. The script typically contains one or more srun commands to launch parallel tasks.
- `squeue` - Reports the state of jobs or job steps.
- `scancel` - Used to stop a job before it completes.

### Examples

- [sinfo](slurm/sinfo.html)


## Advanced

- [Slurm Array](slurm/array.html)
