//# pattern-5, witnesses: 2
@@
expression E0;
expression E1;
@@
- cgroup_path(cgrp, E0, E1)
+ cgroup_path_ns_locked(cgrp, E0, E1, &init_cgroup_ns)
//# pattern-6, witnesses: 2
@@
expression E0;
expression IL1;
expression IL2;
expression IL3;
@@
- (E0 | IL1 | IL2 | IL3 | CLONE_NEWPID)
+ (E0 | IL1 | IL2 | IL3 | CLONE_NEWPID | CLONE_NEWCGROUP)
