---
layout: page
---

High Performance Computing (HPC)
Generally “large” computational tasks
Reduce run time for single job from 12 months to 1 week
Example: Airplane aerodynamic simulation including fluid flow and structural mechanics within a single analysis

High Throughput Computing (HTC)
Generally many “small” computational tasks
Reduce run time for 10,000 “small” jobs from 3 months to 1 week (with each “small” job taking ~ 1 hr)
Example: Analyze performance of each stock on the NASDAQ as separate independent analyses

Advanced Visualization
See data in new ways – discover new relationships, trends, etc.
Advanced technology resources, training and instruction.
Example: Immersive 3D visualization

scancel 1234                      # cancel job 1234
scancel -u $USER                  # cancel all my jobs
scancel -u $USER --state=running  # cancel all my running jobs
scancel -u $USER --state=pending  # cancel all my pending jobs

- VIM Video (Sean Biddle): https://www.youtube.com/watch?v=Nim4_f5QUxA

- https://github.com/jlevy/the-art-of-command-line

- http://wiki.bash-hackers.org/

- https://google.github.io/styleguide/shell.xml

- https://en.wikibooks.org/wiki/Bash_Shell_Scripting

- https://github.com/jlevy/the-art-of-command-line

- https://www.learnenough.com/command-line-tutorial

- http://www.ee.surrey.ac.uk/Teaching/Unix/

---

In 1994, Mike Gancarz (a member of the team that designed the X Window System), drew on his own experience with Unix, as well as
discussions with fellow programmers and people in other fields who depended on Unix, to produce The UNIX Philosophy which sums it up
in 9 paramount precepts:

- Small is beautiful.
- Make each program do one thing well.
- Build a prototype as soon as possible.
- Choose portability over efficiency.
- Store data in flat text files.
- Use software leverage to your advantage.
- Use shell scripts to increase leverage and portability.
- Avoid captive user interfaces.
- Make every program a filter.



### Slurm Commands

These are the most common commands used by a user of Slurm.

- `sinfo` - Reports the state of partitions and nodes managed by Slurm.
- `sbatch` - Submits a job script for execution. The script typically contains one or more
             srun commands to launch parallel tasks.
- `squeue` - Reports the state of jobs or job steps.
- `srun` - Used to submit a job for execution or initiate job steps in real time.
- `scancel` - Used to stop a job before it completes.

Run `man <command>` to find documentation on the command.

Monitoring Jobs

    $ squeue --user=$USER

- `CA` (`CANCELLED`)   - Job was cancelled by the user or system administrator
- `CD` (`COMPLETED`)   - Job completed
- `CF` (`CONFIGURING`) - Job has been allocated resources, but are waiting for them to become ready
- `CG` (`COMPLETING`)  - Job is in the process of completing
- `F`  (`FAILED`)      - Job terminated with non-zero exit code
- `NF` (`NODE_FAIL`)   - Job terminated due to failure of one or more allocated nodes
- `PD` (`PENDING`)     - Job is awaiting resource allocation
- `R`  (`RUNNING`)     - Job currently has an allocation
- `S`  (`SUSPENDED`)   - Job has an allocation, but execution has been suspended
- `TO` (`TIMEOUT`)     - Job terminated upon reaching its time limit

---

Run `man sbatch` for extensive description of the options.

- `--job-name=<name>`   - Job Name (e.g. `--job-name=test-run`)
- `--output=<filename>` - STDOUT/STDERR sent to this file (e.g. `--job-name=test-run.log`)
- `--partition=<name>`  - Run is the med partition (known as a queue in SGE)
- `--nodes=4`           - Request four nodes
- `--ntasks-per-node=8` - Request eight tasks per node.
- `--ntasks=32`         - Request 32 tasks for your job (instead of `--ntasks-per-node`)
- `--time=D-HH:MM`      - The maximum amount of time your job will run before it is killed
                          (e.g. 2 days and 12 hours would be `--time=2-12:00`, 2 hours would be
                           `--time=0-2:00`)
- `--–mail-type=<type[,type...]>` - `BEGIN` when job starts, `END` when it completes, `FAIL` if it fails, or `ALL` (e.g.
                                    `--mail-type=BEGIN,END,FAIL`)
- `--mail-user=jsmith@no-domain.foo` - Address to e-mail user notifications
- `--mem-per-cpu=MB` - Specify a memory limit for each process of your job
- `--mem=MB` - Specify a memory limit for each node of your job
- `--exclusive` - Specify that you need exclusive access to nodes for your job
- `--share`  - Specify that your job may share nodes with other jobs
- `--begin=2016-09-01T00:00:00`  Start the job after this time
- `--begin=now+1hour` - Use a relative time to start the job
- `--dependency=afterany:200:201` -  Wait for jobs 200 and 201 to complete before starting (success or failure)
- `--dependency=afterok:200:201` - Wait for jobs 200 and 201 to finish (only if both are successful)

