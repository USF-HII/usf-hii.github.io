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
srun --partition=hii02 uname -n
svc-3024-4-20.rc.usf.edu
```
