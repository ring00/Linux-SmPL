//# pattern-1, witnesses: 2
@@
expression F1;
expression ME0;
expression V2;
@@
- setup_timer(&ME0, F1, V2);
+ timer_setup(&ME0, F1);
//# pattern-12, witnesses: 2
@@
expression F0;
@@
- setup_timer(&adapter->watchdog_timer, &F0, adapter);
+ timer_setup(&adapter->watchdog_timer, F0);
//# pattern-13, witnesses: 2
@@
expression F0;
expression F1;
@@
- setup_timer(&adapter->watchdog_timer, F0, adapter);
- setup_timer(&adapter->phy_info_timer, F1, adapter);
+ timer_setup(&adapter->watchdog_timer, F0);
+ timer_setup(&adapter->phy_info_timer, F1);
//# pattern-16, witnesses: 2
@@
expression F1;
expression V0;
expression V2;
@@
- setup_timer(&V0->service_timer, &F1, V2);
+ timer_setup(&V0->service_timer, F1);
