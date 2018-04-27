//# pattern-1, witnesses: 7
@@
expression V0;
expression V1;
expression V2;
expression V3;
expression V4;
expression V5;
expression V6;
expression V7;
@@
- V0.install = jiffies_to_clock_t(jiffies - V1->common.tcfc_tm.install);
- V2.lastuse = jiffies_to_clock_t(jiffies - V3->common.tcfc_tm.lastuse);
- V4.firstuse = jiffies_to_clock_t(jiffies - V5->common.tcfc_tm.firstuse);
- V6.expires = jiffies_to_clock_t(V7->common.tcfc_tm.expires);
+ tcf_tm_dump(&V2, &V3->common.tcfc_tm);
//# pattern-3, witnesses: 4
@@
expression E5;
expression E7;
expression ME4;
expression ME6;
expression V0;
expression V1;
expression V2;
expression V3;
@@
- V0.install = jiffies_to_clock_t(jiffies - V1->common.tcfc_tm.install);
- V2.lastuse = jiffies_to_clock_t(jiffies - V3->common.tcfc_tm.lastuse);
- ME4 = jiffies_to_clock_t(E5);
- ME6 = jiffies_to_clock_t(E7);
+ tcf_tm_dump(&V0, &V1->common.tcfc_tm);
