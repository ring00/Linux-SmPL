//# pattern-3, witnesses: 19
@@
expression E0;
@@
- E0 = CURRENT_TIME
+ E0 = current_time(inode)
//# pattern-2, witnesses: 4
@@
expression E0;
@@
- E0 = CURRENT_TIME
+ E0 = current_time(dir)
//# pattern-1, witnesses: 3
@@
expression ME0;
@@
- struct timespec current_time = CURRENT_TIME;
- ME0 = current_time;
+ struct timespec ts = current_time(inode);
+ ME0 = ts;
//# pattern-5, witnesses: 3
@@
expression E0;
@@
- E0 = CURRENT_TIME
+ E0 = current_time(inode)
