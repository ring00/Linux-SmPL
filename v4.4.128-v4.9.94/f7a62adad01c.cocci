//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (status != NFS_OK) { S0 }
+ if (status == -NFS4ERR_EXPIRED || status == -NFS4ERR_BAD_STATEID) { S0 }
