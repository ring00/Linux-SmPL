//# pattern-1, witnesses: 15
@@
expression E0;
expression E1;
expression E2;
expression E3;
@@
- inet6_netconf_notify_devconf(E0, E1, E2, E3)
+ inet6_netconf_notify_devconf(E0, RTM_NEWNETCONF, E1, E2, E3)