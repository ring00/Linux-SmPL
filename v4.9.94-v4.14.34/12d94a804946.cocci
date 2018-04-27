//# pattern-1, witnesses: 3
@@
expression ME0;
@@
- in6_dev_put(ME0->rt6i_idev)
+ in6_dev_put_clear(&ME0->rt6i_idev)
