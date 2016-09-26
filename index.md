---
layout: page
---

# USF Health Informatics Institute HPC Environment Documentation

Welcome to the USF Health Informatics Institute HPC Environment.

Your NetID has been emailed to you, and you belong to the primary group `hii=ut`.

You can login to the cluster via SSH using your NetID at hii.rc.usf.edu. EG:

`$ ssh <netid>@hii.rc.usf.edu`

The HII HPC Cluster uses the [Slurm Workload Manager](http://slurm.schedmd.com).

The main partition is `hii01` and its status may be viewed using the `sinfo` command:

`$ sinfo --partition=hii02`

---

## NOTE

Although our partition is part of the USF Research Computing environment, we are segregated from the main "circe" head node and partition and some exceptions therefore apply:

- Some of the documentation at [http://cwa.rc.usf.edu](http://cwa.rc.usf.edu) may be slightly inconsistent.
  - Substitute `circe.rc.usf.edu` with `hii.rc.usf.edu`
  - Substitute the Slurm partition `circe` with the Slurm partition `hii02`
- Some web-based functionality, such as shell, file-transfer, and desktop environments will not function, or will not function correctly.

---

## Recommended Documentation
- [USF RC Docs](https://cwa.rc.usf.edu/projects/research-computing/wiki)
- [USF RC Slurm Guide](https://cwa.rc.usf.edu/projects/research-computing/wiki/Guide_to_SLURM)
- [USF RC Applications](https://cwa.rc.usf.edu/projects/research-computing/wiki/Applications)
- [USF RC Modules](https://cwa.rc.usf.edu/projects/research-computing/wiki/Modules)
- [USF RC Apps Queue](https://cwa.rc.usf.edu/projects/research-computing/wiki/AppsQueue)
- [USF RC Development Tools](https://cwa.rc.usf.edu/projects/research-computing/wiki/DevelopmentTools)
- [Slurm Rosetta Stone (PDF)](http://slurm.schedmd.com/rosetta.pdf)

## Cluster Information

The main partition is `hii02` and should be provided as a command line option (`--partition=hii02` or `-phii02`) for any of your Slurm commands, e.g.:

```
$ srun --partition=hii02 uname -n
svc-3024-4-20.rc.usf.edu
```

The additional partitions available are `hii-test` for testing batch jobs and `hii-interactive` for testing interactively on a compute node.

Example to gain an interactive session on a compute node with 4 cpus and 24GB of RAM for 8 hours:

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ # now on a compute node in an interactive bash shell
svc-3024-5-6$ exit
```

The session will terminate when you exit the shell or the time limit you set expires. Please be considerate with your time and resources as we have a limited number of interactive nodes.

You can set the following environmental variables in your `~/.bashrc` so you don't have to provide the `--partition|-p` option:

```sh
export SLURM_PARTITION=hii02
export SALLOC_PARTITION=$SLURM_PARTITION
export SBATCH_PARTITION=$SLURM_PARTITION
export SINFO_PARTITION=$SLURM_PARTITION
export SQUEUE_PARTITION=$SLURM_PARTITION
```

Your personal filesystems include:
- Home: `/home/<NetID First Letter>/<NetID>/`
- Work: `/hii/work/<NedID First Letter>/<NetID>/`
