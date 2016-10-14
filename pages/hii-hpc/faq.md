---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### FAQ

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
the `sinfo` example [Show All HII-HPC ResourcesE](sinfo.html#show-all-hii-hpc-resources) to obtain the most current information.

#### 4. Can I get package "X" installed on the HII-HPC Cluster?

There are a number of USF RC pre-built packages available on the HII-HPC cluster via [Modules](modules.html).

If utilizing Python, consider utilizing a Python [Virtual Environment](python-virtualenv.html) so you can
control your own Python packages.

If utilizing R, most packages can be installed into your local R environment
following similar patterns to those detailed at [https://www.osc.edu/documentation/howto/install-local-R-packages](https://www.osc.edu/documentation/howto/install-local-R-packages).

For other software, there are two paths:

1. Compile it yourself using `gcc` or an Intel Compiler `icc` (see [Modules](modules.html)) configuring
   and deploying to an installation path under your `$HOME` or preferably your group share
   (e.g. `/shares/hii-sith/opt/<program-version>/...`)

2. Request the software via the USF HII-HPC Help Desk with the understanding that certain requests
   may involve a formal project engagement to implement a deployment.


