//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- mce_severity(E0, mca_cfg.tolerant, E1)
+ mce_severity(E0, mca_cfg.tolerant, E1, true)
