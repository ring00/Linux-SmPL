//# pattern-7, witnesses: 3
@@
statement S0;
@@
- if (conf->log) { S0 }
+ if (conf->log || raid5_has_ppl(conf)) { S0 }
