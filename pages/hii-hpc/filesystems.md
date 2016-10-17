---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Filesystems

Each user will have the following directories available on the `hii.rc.usf.edu` head node and all compute nodes and partitions available on the HII-HPC Cluster via [GPFS](https://en.wikipedia.org/wiki/IBM_General_Parallel_File_System):

#### Home

- `/home/<fi>/<netid>` - Home directory, `$HOME` (e.g. `/home/d/dvader/`).

#### Work

- `/hii/work/<fi>/<netid>` - Computational work directory for temporary filesets generated through research and analysis pipelines (e.g. `/hii/work/d/dvader/`).

#### Group Share
- `/shares/hii-<group_name>/` - Shared group directory (e.g. `/shares/hii-jedi/`).

*Note: Your shared team directory (e.g. `/shares/hii-jedi`)
  is configured so files and folders created will be owned by the user and the user's group affiliation
  (e.g. `dvader:hii-jedi` instead of `dvader:dvader`).*
