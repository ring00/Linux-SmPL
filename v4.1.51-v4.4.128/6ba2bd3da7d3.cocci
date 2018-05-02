//# pattern-2, witnesses: 3
@@
expression E1;
expression E3;
expression V0;
expression V2;
@@
- drm_edid_block_valid(V0 + E1 * EDID_LENGTH, V2, E3)
+ drm_edid_block_valid(V0 + E1 * EDID_LENGTH, V2, E3, NULL)
//# pattern-1, witnesses: 2
@@
expression V0;
@@
- drm_edid_block_valid(V0, 0, print_bad_edid)
+ drm_edid_block_valid(V0, 0, print_bad_edid, &connector->edid_corrupt)
