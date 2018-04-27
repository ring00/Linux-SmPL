//# pattern-2, witnesses: 2
@@
@@
- spin_unlock_bh(&fib_multipath_lock);
//# pattern-3, witnesses: 2
@@
@@
- nexthop_nh->nh_power = 0;
//# pattern-5, witnesses: 2
@@
@@
- spin_lock_bh(&fib_multipath_lock);
