//# pattern-2, witnesses: 2
@@
expression E1;
expression E2;
expression E3;
expression V0;
@@
- struct media_entity * entity = entity;
- if (fe && V0) {
- media_create_pad_link(fe, E1, E2, 0, E3);
- }
+ struct media_entity * entity = entity;
+ if (demod && V0) {
+ media_create_pad_link(demod, E1, E2, 0, E3);
+ }
//# pattern-3, witnesses: 2
@@
@@
- MEDIA_ENT_T_DEVNODE_DVB_CA
+ MEDIA_ENT_T_DVB_CA
//# pattern-5, witnesses: 2
@@
@@
- MEDIA_ENT_T_DEVNODE_DVB_DEMUX
+ MEDIA_ENT_T_DVB_DEMUX
