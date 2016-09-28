---
layout: page
---

# USF RC HII Cluster Modules

Most computing applications available on the cluster are accessible via modules.

Modules provides an easy way to modify your environment to support applications and
libraries. This allows system administrators to create template files that contain all of the
necessary environment information for a user to use an application. It also simplifies a user's
environment, removing extraneous paths from variables and including only those that a user
needs.

**Note:** Whether you are running an application as a batch job or an interactive shell,
you must have the appropriate module loaded into your environment in order to get access to your application.

## Listing Available Applications

To list all applications available via the module command:

```
hii$ module -t avail
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

The above command sends to STDERR so a pager such as more or less will not capture it, to run the output through a pager
use shell redirection:

```
hii$ module -t avail 2>&1 | less
```

You may also search for an application using `grep` with shell redirection, for example:

```
hii$ module -t avail 2>&1 | grep R
apps/R/2.11.1
apps/R/2.15.3
apps/R/3.0.3-pbdR
apps/R/3.1.2
apps/R/3.2.3
```

```

Note: This is NOT the current list of modules. Modules listed with module avail are the current and up-to-date listing.
Show Currently Loaded Modules
This shows a list of all modules that are currently loaded into the environment. PATH, MANPATH, LD_LIBRARY_PATH, and other variables may be modified or initialized to support the application you are using.

[user@login0 ~]$ module list
Currently Loaded Modulefiles:
  1) util/modules                      4) openmpi/1.2.6-amd64-intel-9.1
  2) compilers/intel/10.1.008.x86_64   5) apps/matlab/r2008a
  3) apps/namd/2.6
Show modules that are loaded during login and job execution
Often times, you will want to see which modules you are using in your persistent environment. In order to see which modules will load when you log in or when you submit a job to the queue, use the following command:

[user@login0 ~]$ module initlist

bash initialization file $HOME/.modules loads modules:
        null apps/namd/2.7 apps/matlab/r2015a
Dependencies
In the examples above, even though module list is referenced, saving you from having to remember which compiler and libraries are needed with a particular module.

Load a Module into the Current Environment
This loads a module into the current environment by modifying environment variables such as PATH, MANPATH or LD_LIBRARY_PATH to include locations that are necessary for running a particular application. These changes are lost on subsequent logins.

[user@login0 ~]$ module add apps/R/3.1.2

where apps/R/2.06.1 is one of the modules listed in the output of module list
Load a Module into the Persistent Environment
This tells modules to make the loading of a particular module persistent across all subsequent sessions, These changes are kept after every subsequent login but do not take place during the current session. Using module load after module initload will ensure that the current session is modified and that subsequent sessions are aware of the change. This is most useful for applications you will be running with SLURM.

[user@login0 ~]$ module initadd apps/R/3.1.2

To use module initadd you will need to create the ~/.modules file (if it does not exist already) and include the following line in:
module load null

This will ensure that modules are loaded any time a shell is invoked, regardless of the shell in question.
Remove a Module from the Current Environment
Sometimes you need to remove support for an application from the current environment. This command allows you to do this. Changes are not persistent across reboots, especially if a module is loaded at login.

[user@login0 ~]$ module rm apps/R/3.1.2
Remove a Module from the Persistent Environment
When you are done using an application or you simply no longer want it loaded at login, the following command will help:

[user@login0 ~]$ module initrm apps/R/3.1.2
Crafting your own Module Files
You can create your own module files for your locally installed applications by placing them in a directory structure under ~/.modulefiles

Purge All Modules
To unload all modules, issue the following command:

[user@login0 ~]$ module purge

To unload all persistent modules, issue the following command:
[user@login0 ~]$ module initclear
```
