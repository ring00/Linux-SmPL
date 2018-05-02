//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0->sender(intf->send_info, E1, 0)
+ E0->sender(intf->send_info, E1)
