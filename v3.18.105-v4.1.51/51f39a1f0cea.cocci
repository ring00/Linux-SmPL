//# pattern-4, witnesses: 2
@@
@@
- do_execve_common(filename, argv, envp)
+ do_execveat_common(AT_FDCWD, filename, argv, envp, 0)
