---
layout: page
---

## Overview

In partnership with [USF Research Computing](http://www.rc.usf.edu/) the [Health Informatics Institute](http://www.hii.usf.edu)
offers BigScale/BigData computational resources for Bioinformatics research.

## Clusters

### usf-rc-hii

The USF RC HII Cluster is a subset of the USF Research Computing [CIRCE](https://www.rc.usf.edu/circe.php) infrastructure.

The USF RC HII Cluster utilizes the [Slurm Workload Manager](http://slurm.schedmd.com)
for scheduling BigScale/BigData computational workloads for its faculty, staff and external partners.

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

#### Documentation

- [Connection Information](pages/connection.html)
- [Frequently Asked Questions](pages/faq.html)

#### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs
- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development.
   Please **DO NOT** run batch jobs on this partition - use `hii-test` or `hii02` for batch jobs.

#### Filesystems

Each external analytical partner will have the following directories allocated to them:

- `/home/<fi>/<netid>` - Your `$HOME` directory for local work (e.g. `/home/j/jsmith`).
- `/hii/work/<fi>/<netid>` - Your work directory for temporary, large filesets
- `/shares/hii-<group_name>/` - Your group directory for shared collaboration with your team (e.g. `/shares/hii-broad`)
