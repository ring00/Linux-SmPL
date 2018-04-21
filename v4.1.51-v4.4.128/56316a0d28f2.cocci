//# pattern-1, witnesses: 6
@@
identifier PV0;
statement S1;
@@
- if (JBD2_HAS_INCOMPAT_FEATURE(PV0, JBD2_FEATURE_INCOMPAT_64BIT)) { S1 }
+ if (jbd2_has_feature_64bit(PV0)) { S1 }
//# pattern-2, witnesses: 5
@@
@@
- JBD2_HAS_COMPAT_FEATURE(journal, JBD2_FEATURE_COMPAT_CHECKSUM)
+ jbd2_has_feature_checksum(journal)
//# pattern-4, witnesses: 5
@@
@@
- JBD2_HAS_INCOMPAT_FEATURE(journal, JBD2_FEATURE_INCOMPAT_ASYNC_COMMIT)
+ jbd2_has_feature_async_commit(journal)
//# pattern-3, witnesses: 3
@@
identifier PV0;
statement S1;
@@
- if (JBD2_HAS_INCOMPAT_FEATURE(PV0, JBD2_FEATURE_INCOMPAT_CSUM_V3)) { S1 }
+ if (jbd2_has_feature_csum3(PV0)) { S1 }
