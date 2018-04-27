//# pattern-1, witnesses: 2
@@
expression E0;
@@
- E0->q.flags & INET_FRAG_EVICTED
+ inet_frag_evicting(&E0->q)
