//# pattern-6, witnesses: 2
@@
expression EC0;
@@
- nf_reject_iphdr_put(nskb, oldskb, EC0, sysctl_ip_default_ttl)
+ nf_reject_iphdr_put(nskb, oldskb, EC0, net->ipv4.sysctl_ip_default_ttl)
