//# pattern-2, witnesses: 2
@@
expression V0;
@@
- struct fs_pin * pin = pin;
- pin = hlist_entry(V0, );
- pin->kill(pin);
+ pin_kill(hlist_entry(V0, ));
