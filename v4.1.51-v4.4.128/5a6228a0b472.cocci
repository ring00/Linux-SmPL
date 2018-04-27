//# pattern-1, witnesses: 3
@@
expression list listE0;
@@
- lwtunnel_state_put(listE0)
+ lwtstate_put(listE0)
//# pattern-2, witnesses: 3
@@
@@
- lwtunnel_state_get(lwtstate);
//# pattern-3, witnesses: 2
@@
expression ME0;
expression ME1;
expression ME2;
expression ME3;
@@
- if (ME0) {
- lwtunnel_state_get(ME1);
- ME2 = ME3;
- }
+ ME2 = lwtstate_get(ME1);
//# pattern-5, witnesses: 2
@@
expression V0;
@@
- V0->nh_lwtstate = lwtstate
+ V0->nh_lwtstate = lwtstate_get(lwtstate)
