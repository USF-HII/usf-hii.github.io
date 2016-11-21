---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Frequently Asked Questions

#### 1. What is the purpose of the HII-HPC Cluster?

The HII-HPC Cluster is a specialized set of compute resources offered
to facilitate Bioinformatics research for large-scale workloads.

#### 2. What is the relationship between the HII-HPC Cluster and CIRCE?

CIRCE, the "Central Instructional and Research Computing Environment",
is the high-performance computing infrastructure provided by
[USF Research Computing](http://www.usf.edu/it/research-computing/)
for all faculty, students, staff, and partners.

The [HII-HPC Cluster](../hii-hpc.html) represents a specialized subset of resources
integrating into the overall CIRCE environment providing the unique requirements of
high-throughput bioinformatics as a workload.

Due to this specialization, please use the [HII Compute Portal Documentation](https://usf-hii.github.io/)
as the authoritative source of information for the HII-HPC Cluster.

#### 3. What resources are available on the HII-HPC Cluster?

Since resources are being added to the cluster on a continual basis, the most accurate way to determine
available resources is by logging into the head node, `hii.rc.usf.edu`, and referring to
the `sinfo` example [Show All HII-HPC Resources](sinfo.html#show-all-hii-hpc-resources) to obtain the most current information.

#### 4. Can I get package "X" installed on the HII-HPC Cluster?

There are a number of USF RC pre-built packages available on the HII-HPC cluster via [Modules](modules.html).

For Python packages, use a [Virtual Environment](python-virtualenv.html) so you can control your own Python packages.

For R, most packages can be installed into your local R environment
following similar patterns to those detailed at [https://www.osc.edu/documentation/howto/install-local-R-packages](https://www.osc.edu/documentation/howto/install-local-R-packages).

For other software:

1. Compile it yourself using `gcc` or an Intel Compiler `icc` (see [Modules](modules.html)) configuring
   and deploying to an installation path under your `$HOME` or preferably your group share
   (e.g. `/home/d/dvader/software/<name>-<version>/...` or `/shares/hii-jedi/software/<name>-<version>/...`)

2. Request the software via the USF [Help Desk](help.html) to be added to the [Modules](modules.html) environment.

#### 5. Can I have a mysql database, postresql database, etc. instance on the HII-HPC Cluster?

Stateful services are services expected to persist beyond an individual job submission on the HII-HPC cluster
(e.g. `mysql`, `postgresql`, etc.).

Stateful services are not currently supported on the HII-HPC cluster.

If you wish to connect to an external service from the HII-HPC cluster, the following source IPs will
be seen by the external service and may need to be added to the appropriate firewall ruleset:

- `131.247.250.90` (Public IP for the head node, `hii.rc.usf.edu`)
- `131.247.244.250` (Public IP for all compute nodes)

