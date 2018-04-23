//# pattern-1, witnesses: 7
@@
expression E0;
identifier cl;
identifier d;
identifier fn;
identifier sch;
@@
 int fn(struct Qdisc * sch, unsigned long cl, struct gnet_dump * d)
 {
     <...
- gnet_stats_copy_basic(d, NULL, &E0->bstats)
+ gnet_stats_copy_basic(qdisc_root_sleeping_running(sch), d, NULL, &E0->bstats)
     ...>
 }
//# pattern-12, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- gen_replace_estimator(&E0->bstats, E1, &E2->rate_est, qdisc_root_sleeping_lock(sch), tca[TCA_RATE])
+ gen_replace_estimator(&E0->bstats, E1, &E2->rate_est, NULL, qdisc_root_sleeping_running(sch), tca[TCA_RATE])
//# pattern-4, witnesses: 2
@@
identifier arg;
identifier classid;
identifier fn;
identifier parentid;
identifier sch;
identifier tca;
typedef u32;
@@
 int fn(struct Qdisc * sch, u32 classid, u32 parentid, struct nlattr ** tca, unsigned long * arg)
 {
     <...
- spinlock_t * lock = qdisc_root_sleeping_lock(sch);
     ...>
 }
//# pattern-7, witnesses: 2
@@
@@
- qdisc_root_sleeping_lock(q)
+ NULL
//# pattern-15, witnesses: 2
@@
identifier arg;
identifier classid;
identifier fn;
identifier parentid;
identifier sch;
identifier tca;
typedef u32;
@@
 int fn(struct Qdisc * sch, u32 classid, u32 parentid, struct nlattr ** tca, unsigned long * arg)
 {
     <...
- gen_replace_estimator(&cl->bstats, NULL, &cl->rate_est, lock, tca[TCA_RATE])
+ gen_replace_estimator(&cl->bstats, NULL, &cl->rate_est, NULL, qdisc_root_sleeping_running(sch), tca[TCA_RATE])
     ...>
 }
//# pattern-16, witnesses: 2
@@
identifier arg;
identifier classid;
identifier fn;
identifier parentid;
identifier sch;
identifier tca;
typedef u32;
@@
 int fn(struct Qdisc * sch, u32 classid, u32 parentid, struct nlattr ** tca, unsigned long * arg)
 {
     <...
- gen_new_estimator(&cl->bstats, NULL, &cl->rate_est, qdisc_root_sleeping_lock(sch), tca[TCA_RATE])
+ gen_new_estimator(&cl->bstats, NULL, &cl->rate_est, NULL, qdisc_root_sleeping_running(sch), tca[TCA_RATE])
     ...>
 }
//# pattern-22, witnesses: 2
@@
expression E1;
expression E4;
expression ME0;
expression ME2;
expression ME3;
@@
- gen_new_estimator(&ME0, E1, &ME2, &ME3, E4)
+ gen_new_estimator(&ME0, E1, &ME2, &ME3, NULL, E4)
