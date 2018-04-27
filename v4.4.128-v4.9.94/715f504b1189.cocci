//# pattern-1, witnesses: 4
@@
statement S0;
@@
- if (optname == IPV6_CHECKSUM) { S0 }
+ if (optname == IPV6_CHECKSUM || optname == IPV6_HDRINCL) { S0 }
