//# pattern-4, witnesses: 3
@@
expression E0;
@@
- E0->int_line
+ E0->use_hecc1int
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- priv->base + priv->mbx_offset + E0
+ priv->mbx + E0
