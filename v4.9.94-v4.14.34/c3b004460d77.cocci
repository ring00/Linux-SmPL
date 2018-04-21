//# pattern-5, witnesses: 6
@@
@@
- mutex_unlock(&dqopt->dqonoff_mutex);
//# pattern-6, witnesses: 3
@@
@@
- mutex_lock(&dqopt->dqonoff_mutex);
