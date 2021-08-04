---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Filesystems

Each user will have the following filesystems available to them
on the `hii.rc.usf.edu` or `hii2.rc.usf.edu` head node and all compute nodes within
HII-HPC Cluster.

The filesystems are backed by GPFS, the
[General Parallel File System](https://en.wikipedia.org/wiki/IBM_General_Parallel_File_System), used by many HPC clusters to provide scaleable
I/O for large computational workloads.

---

#### Home

- Path: `/home/<fi>/<netid>` (e.g. `/home/d/dvader/`)
- Description: Home directory, accessible from the shell via `cd $HOME`
  or `cd ~`.

#### Work

- Path: `/hii/work/<fi>/<netid>` (e.g. `/hii/work/d/dvader/`)
- Description: Computational work directory for temporary filesets generated through research and analysis pipelines.

#### Group Share

- Path: `/shares/hii-<group_name>/` (e.g. `/shares/hii-jedi/`)
- Description: Shared group directory.

*Note: Your shared team directory (e.g. `/shares/hii-jedi`)
  is configured so files and folders created will be owned by the user and the user's group affiliation
  (e.g. `dvader:hii-jedi` instead of `dvader:dvader`).*
