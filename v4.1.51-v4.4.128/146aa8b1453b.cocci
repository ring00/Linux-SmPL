//# pattern-3, witnesses: 7
@@
expression E0;
@@
- E0->payload.data
+ E0->payload.data[0]
//# pattern-11, witnesses: 3
@@
expression E0;
expression V1;
@@
- E0 = V1->payload.data
+ E0 = user_key_payload(V1)
//# pattern-12, witnesses: 3
@@
expression E0;
@@
- E0->payload.data
+ E0->payload.data[asym_crypto]
//# pattern-9, witnesses: 2
@@
@@
- &sidkey->payload.value
+ &sidkey->payload.data[0]
