//# pattern-3, witnesses: 2
@@
@@
- lowpan_iphc_uncompress_eui64_lladdr(ipaddr, lladdr)
+ lowpan_iphc_uncompress_lladdr(dev, ipaddr, lladdr)
//# pattern-12, witnesses: 2
@@
expression E0;
@@
- E0->eui64_addr
+ E0->lladdr
