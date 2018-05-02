//# pattern-2, witnesses: 10
@@
statement S0;
@@
- if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV) { S0 }
+ if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH) { S0 }
//# pattern-1, witnesses: 3
@@
@@
- dev->transport->transport_type != TRANSPORT_PLUGIN_PHBA_PDEV
+ !dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH
//# pattern-3, witnesses: 3
@@
expression IL1;
identifier s;
@@
 struct se_subsystem_api s = {
-    .transport_type = IL1,
 };
//# pattern-4, witnesses: 2
@@
identifier s;
@@
 struct se_subsystem_api s = {
 };
