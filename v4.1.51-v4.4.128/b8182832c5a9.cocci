//# pattern-4, witnesses: 2
@@
statement S0;
@@
- if (ctx->i80_if) { S0 }
+ if (ctx->out_type == IFTYPE_I80) { S0 }
