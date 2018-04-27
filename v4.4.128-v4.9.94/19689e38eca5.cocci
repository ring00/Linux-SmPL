//# pattern-1, witnesses: 2
@@
expression E0;
@@
- if (tcp_v4_md5_hash_pseudoheader(hp, daddr, saddr, E0)) {
- }
- if (tcp_md5_hash_header(hp, th)) {
- }
+ if (tcp_v4_md5_hash_headers(hp, daddr, saddr, th, E0)) {
+ }
