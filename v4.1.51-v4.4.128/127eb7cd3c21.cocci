//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- lwtunnel_build_state(dev, E0, E1, &lwtstate)
+ lwtunnel_build_state(dev, E0, E1, AF_INET, cfg, &lwtstate)
