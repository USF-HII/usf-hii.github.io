---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Filesystems

Each user will have the following filesystems available to them
on the `hii.rc.usf.edu` head node and all compute nodes within
HII-HPC Cluster.

The filesystems run on top of GPFS, the
[General Parallel File System](https://en.wikipedia.org/wiki/IBM_General_Parallel_File_System), used by many HPCclusters
to provide scaleable I/O for large computational workloads.

---

#### Home

- Path: `/home/<fi>/<netid>`
- Description: Home directory, `$HOME` (e.g. `/home/d/dvader/`).

#### Work

- Path: `/hii/work/<fi>/<netid>`
- Description: Computational work directory for temporary filesets generated through research and analysis pipelines (e.g. `/hii/work/d/dvader/`).

#### Group Share

- Path: `/shares/hii-<group_name>/`
- Description: Shared group directory (e.g. `/shares/hii-jedi/`).

*Note: Your shared team directory (e.g. `/shares/hii-jedi`)
  is configured so files and folders created will be owned by the user and the user's group affiliation
  (e.g. `dvader:hii-jedi` instead of `dvader:dvader`).*
