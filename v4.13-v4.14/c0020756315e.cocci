//# pattern-1, witnesses: 3
@@
expression E0;
statement S1;
@@
- if (!uuid_le_cmp(*sec_type, E0)) { S1 }
+ if (guid_equal(sec_type, &E0)) { S1 }
