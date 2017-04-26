---
layout: page
---

<img src="/images/usf-hii-logo.png" border="0" width="30%" height="30%" />
<br/>

## HII-HPC Cluster

In partnership with [USF Research Computing](http://www.usf.edu/it/research-computing/),
the [Health Informatics Institute](http://www.hii.usf.edu)
offers the HII-HPC Cluster for its faculty and partners requiring
large-scale computational resources for bioinformatics workloads.

---

### Overview

- [Purpose](hii-hpc/purpose.html)
- [Linux](hii-hpc/linux.html)
- [Connecting](hii-hpc/connect.html)
- [Filesystems](hii-hpc/filesystems.html)
- [Slurm](hii-hpc/slurm.html)
- [Modules](hii-hpc/modules.html)
- [Getting Help](hii-hpc/help.html)
- [Frequently Asked Questions](hii-hpc/faq.html)
- [Other Topics](hii-hpc/other.html)

---

### Availability

The HII-HPC Cluster reserves two maintenance windows on the same day each week:

- Every Thursday @ 10:00 AM EDT until 12:00 Noon EDT
  - Description: Updates to the Head Node (`hii.rc.usf.edu`) - SSH Logins and Screen/Tmux sessions
    _may_ be terminated but no Slurm jobs already submitted will be affected. A broadcast message will
    generally be sent to logged in users on Wednesday if a downtime is expected the following day.

- Every Thursday @ 10:00 PM EDT until 06:00 AM EDT
  - Description: Updates to the Head Nodes and the Compute Nodes - SSH/Screen/Tmux sessions *and* Scheduled Slurm jobs _may_ be affected.
    A broadcast message will generally be sent to logged in users on Wednesday if a downtime is expected the following day.

If you are running any long-term jobs during the Thursday night change window, please make sure to verify your
jobs are still running Friday morning. Job-affecting changes are rare but occasionally necessary for maintaining a healthy cluster.

---

### News

**2017**

- Please disregard the USF Research Computing message regarding quotas - HII maintains separate filesystems with enhanced quotas.

**2016**

- 2 Nodes: 28 Xeon E5-2650 v4 @ 2.30GHz cores with 1024 GB RAM @ 2400 MHz ([High Memory Nodes](hii-hpc/himem-nodes.html))
- 40 Nodes: 20 Xeon E5-2650 v3 @ 2.30GHz cores with 128 GB RAM @ 2133 MHz

**2015**

- 40 Nodes: 16 Xeon E5-2650 v2 @ 2.60GHz with 128 GB RAM @ 1600 MHz
- DDN General Parallel File System (GPFS) Storage Cluster providing Petabytes of scalable I/O

