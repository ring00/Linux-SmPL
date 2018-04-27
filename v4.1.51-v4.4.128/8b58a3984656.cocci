//# pattern-1, witnesses: 3
@@
expression E0;
@@
- opt->hop && E0
+ opt->flags & IP6SKB_HOPBYHOP && E0
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- E0 + opt->hop
+ E0 + sizeof(unsigned long)
