---
layout: page
---

## Overview

In partnership with [USF Research Computing](http://www.rc.usf.edu/) the Health Informatics Institute
provides "Big Scale / Big Data" resources to its analytical partners. USF Research Computing
maintains the overall infrastructure and HII presents a subset of these resources to faculty, staff, and external partners.

<br/>


## Documentation

- [Connection Information](pages/connection.html)
- [Frequently Asked Questions](pages/faq.html)

<br/>

## Clusters

### USF RC HII

The HII HPC Cluster uses the [Slurm Workload Manager](http://slurm.schedmd.com) for scheduling jobs on the cluster.

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

<br/>

#### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs
- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development.
   Please **DO NOT** run batch jobs on this partition - use `hii-test` or `hii02` for batch jobs.

<br/>

### Filesystems

Each external analytical partner will have the following directories allocated to them:

- `/home/<fi>/<netid>` - Your `$HOME` directory for local work (e.g. `/home/j/jsmith`).
- `/hii/work/<fi>/<netid>` - Your work directory for temporary, large filesets
- `/shares/hii-<group_name>/` - Your group directory for shared collaboration with your team (e.g. `/shares/hii-broad`)
