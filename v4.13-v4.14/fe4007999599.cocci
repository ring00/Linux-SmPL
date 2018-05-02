//# pattern-1, witnesses: 3
@@
expression E0;
@@
- E0->rt6i_flagsRTF_OFFLOAD
+ E0->rt6i_nh_flagsRTNH_F_OFFLOAD
//# pattern-3, witnesses: 2
@@
@@
- ~RTF_OFFLOAD
+ ~RTNH_F_OFFLOAD
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0->rt6i_flags
+ E0->rt6i_nh_flags
