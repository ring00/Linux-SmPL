//# pattern-5, witnesses: 4
@@
expression E0;
expression V1;
@@
- ndisc_parse_options(E0, V1, &ndopts)
+ ndisc_parse_options(skb->dev, E0, V1, &ndopts)
//# pattern-20, witnesses: 2
@@
@@
- ndisc_parse_options(msg->opt, ndoptlen, &ndopts)
+ ndisc_parse_options(dev, msg->opt, ndoptlen, &ndopts)
