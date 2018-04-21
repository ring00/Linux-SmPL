//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
@@
- sysctl_follow_link(&E0, &E1, current->nsproxy)
+ sysctl_follow_link(&E0, &E1)
