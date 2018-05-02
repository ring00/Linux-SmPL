//# pattern-1, witnesses: 3
@@
expression E1;
expression V0;
@@
- media_create_pad_link(tuner, 0, V0, 0, E1)
+ media_create_pad_link(tuner, TUNER_PAD_IF_OUTPUT, V0, 0, E1)
