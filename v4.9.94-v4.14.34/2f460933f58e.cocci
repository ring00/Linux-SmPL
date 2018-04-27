//# pattern-2, witnesses: 3
@@
expression ME0;
@@
- ME0->rt6i_idev = in6_dev_get(init_net.loopback_dev);
//# pattern-3, witnesses: 3
@@
expression ME0;
@@
- ME0->dst.dev = init_net.loopback_dev;
