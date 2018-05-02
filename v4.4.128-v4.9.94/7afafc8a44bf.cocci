//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (bio_op(bio) == REQ_OP_DISCARD) { S0 }
+ if (bio_op(bio) == REQ_OP_DISCARD || bio_op(bio) == REQ_OP_SECURE_ERASE) { S0 }
