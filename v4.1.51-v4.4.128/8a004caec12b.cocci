//# pattern-7, witnesses: 6
@@
expression list listE0;
@@
- key_is_instantiated(listE0)
+ key_is_positive(listE0)
//# pattern-9, witnesses: 4
@@
@@
- KEY_FLAG_USER_CONSTRUCT
+ KEY_FLAG_USER_CONSTRUCT
//# pattern-15, witnesses: 2
@@
@@
- smp_rmb;
//# pattern-19, witnesses: 2
@@
statement S0;
identifier fn;
identifier key;
identifier prep;
@@
 int fn(struct key * key, struct key_preparsed_payload * prep)
 {
     <...
- if (test_bit(KEY_FLAG_NEGATIVE, &key->flags)) { S0 }
+ if (key_is_negative(key)) { S0 }
     ...>
 }
//# pattern-21, witnesses: 2
@@
@@
- test_bit(KEY_FLAG_IN_QUOTA, &key->flags)
+ test_bit(KEY_FLAG_IN_QUOTA, &key->flags)
//# pattern-22, witnesses: 2
@@
@@
- clear_bit(KEY_FLAG_NEGATIVE, &key->flags)
+ mark_key_instantiated(key, 0)
