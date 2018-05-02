//# pattern-4, witnesses: 2
@@
expression E0;
statement S1;
@@
- if (host->quirks & DW_MCI_QUIRK_BROKEN_DTO && E0) { S1 }
+ if (host->dir_status == DW_MCI_RECV_STATUS) { S1 }
