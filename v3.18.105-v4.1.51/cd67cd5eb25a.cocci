//# pattern-7, witnesses: 15
@@
expression E0;
@@
- E0->ustats
+ E0->cnt
//# pattern-6, witnesses: 6
@@
expression E0;
@@
- E0->ustats
+ E0->kstats
//# pattern-2, witnesses: 5
@@
expression E0;
@@
- E0->ustats0
+ E0->kstats0
//# pattern-16, witnesses: 3
@@
expression ME0;
expression ME1;
identifier stats;
@@
 void ip_vs_zero_estimator(struct ip_vs_stats * stats)
 {
     <...
- struct ip_vs_stats_user * u = &stats->ustats;
- ME0 = ME1;
+ struct ip_vs_kstats * k = &stats->kstats;
+ ME0 = ME1;
     ...>
 }
//# pattern-17, witnesses: 2
@@
expression ME0;
expression ME1;
identifier stats;
@@
 void ip_vs_zero_estimator(struct ip_vs_stats * stats)
 {
     <...
- struct ip_vs_stats_user * u = &stats->ustats;
- ME0 = ME1;
+ struct ip_vs_kstats * k = &stats->kstats;
+ ME0 = ME1;
     ...>
 }
