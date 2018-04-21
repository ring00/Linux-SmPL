//# pattern-1, witnesses: 8
@@
expression list listE0;
@@
- user_key_payload(listE0)
+ user_key_payload_locked(listE0)
//# pattern-3, witnesses: 3
@@
@@
- rcu_dereference_key(key)
+ dereference_key_locked(key)
//# pattern-2, witnesses: 2
@@
expression list listE0;
@@
- user_key_payload(listE0)
+ user_key_payload_rcu(listE0)
