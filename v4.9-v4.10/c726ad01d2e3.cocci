//# pattern-1, witnesses: 4
@@
expression E0;
@@
- !E0[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT
+ !drm_dp_is_branch(E0)
