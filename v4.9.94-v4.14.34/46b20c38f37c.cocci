//# pattern-1, witnesses: 2
@@
expression E1;
expression ME2;
identifier PV0;
@@
- struct audit_buffer * ab = ab;
- ab = audit_log_start(current->audit_context, GFP_KERNEL, AUDIT_NETFILTER_CFG);
- if (ab) {
- audit_log_format(ab, "table=%s family=%u entries=%u", PV0->name, E1, ME2);
- audit_log_end(ab);
- }
+ audit_log(current->audit_context, GFP_KERNEL, AUDIT_NETFILTER_CFG, "table=%s family=%u entries=%u", PV0->name, E1, ME2);
