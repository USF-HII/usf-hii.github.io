---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Modules

Custom software built by USF Research Computinis available via the [Modules](http://modules.sourceforge.net/) system.

Modules gives the user fine-grained control to select a set of applications as well
as the specific versions they wish to use
without manually configuring and cleaning up necessary environmental variables such as `PATH` and `LD_LIBRARY_PATH`.

### Load a Module

This loads a module into the current environment by modifying environment variables such as `PATH`, `MANPATH` and `LD_LIBRARY_PATH`
to include locations that are necessary for running a particular application. *Note these changes are lost on subsequent logins.*

```
hii$ module add apps/R/3.2.3

hii$ which R
/apps/R/3.2.3/bin/R
```

### List Modules

To list all applications available via the module command (we add the `-t` option to display as a single column):

```
hii$ module avail -t
/etc/modulefiles:
admin/genders
admin/module-cvs
admin/module-info
admin/pdsh
admin/rsge
admin/stress-ng
admin/tools
apps/R/3.2.3
... etc.
```

The `module avail` command outputs to STDERR rather than STDOUT so any program you send the output to will not capture it unless you use shell redirection (`2>&1`). For example to pipe the output of `module avail` into the pager `less` (press `up-arrow` / `down-arrow` to page up and down and `q` to quit):

```
hii$ module avail -t 2>&1 | less
```

You may also search for an application using `grep` with shell redirection, for example:

```
hii$ module avail -t 2>&1 | grep R
apps/R/2.11.1
apps/R/2.15.3
apps/R/3.0.3-pbdR
apps/R/3.1.2
apps/R/3.2.3
```

### List Loaded Modules

To list the modules you currently have loaded:

```
hii$ module list
Currently Loaded Modulefiles:
  1) compilers/intel/2015_cluster_xe   3) apps/jdk/1.6.0_22.x86_64
  2) apps/openbugs/3.2.2               4) apps/R/3.2.3
```

### Remove a Module

Sometimes you need to remove support for an application from the current environment.

```
hii$ module rm apps/R/3.1.2

hii$ which R
/usr/bin/which: no R in (/usr/bin:/usr/local/bin)
```

### Purge all Modules

To unload all modules, issue the following command:

```
hii$ module purge
```
