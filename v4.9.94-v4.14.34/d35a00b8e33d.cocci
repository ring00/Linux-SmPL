//# pattern-2, witnesses: 3
@@
expression E0;
@@
- idev->addr_gen_mode = E0
+ idev->cnf.addr_gen_mode = E0
//# pattern-1, witnesses: 2
@@
identifier s;
@@
 struct ipv6_devconf s = {
+    .addr_gen_mode = IN6_ADDR_GEN_MODE_EUI64,
 };
//# pattern-5, witnesses: 2
@@
@@
- idev->addr_gen_mode
+ idev->cnf.addr_gen_mode
//# pattern-7, witnesses: 2
@@
expression E0;
typedef bool;
identifier idev;
@@
 bool is_addr_mode_generate_stable(struct inet6_dev * idev)
 {
     <...
- idev->addr_gen_mode == E0
+ idev->cnf.addr_gen_mode == E0
     ...>
 }
