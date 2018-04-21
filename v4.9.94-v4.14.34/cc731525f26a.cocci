//# pattern-3, witnesses: 3
@@
identifier from;
identifier to;
@@
 int copy_siginfo_to_user(siginfo_t * to, const siginfo_t * from)
 {
     <...
- err |= __put_user();
     ...>
 }
//# pattern-16, witnesses: 2
@@
expression F0;
statement S1;
@@
- if (F0(uinfo, &info) || __put_user()) { S1 }
+ if (F0(uinfo, &info)) { S1 }
