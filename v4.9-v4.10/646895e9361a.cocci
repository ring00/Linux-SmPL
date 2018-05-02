//# pattern-8, witnesses: 9
@@
expression E0;
@@
- E0->is_yuv
+ E0->color_enc
//# pattern-6, witnesses: 8
@@
@@
- true
+ TGP_COLOR_ENC_YCBCR
//# pattern-2, witnesses: 2
@@
expression E0;
identifier k;
identifier tpg;
@@
 void precalculate_color(struct tpg_data * tpg, int k)
 {
     <...
- E0 && !tpg->is_yuv
+ E0 && tpg->color_enc == TGP_COLOR_ENC_RGB
     ...>
 }
//# pattern-3, witnesses: 2
@@
statement S0;
identifier k;
identifier tpg;
@@
 void precalculate_color(struct tpg_data * tpg, int k)
 {
     <...
- if (tpg->is_yuv) { S0 }
+ if (tpg->color_enc == TGP_COLOR_ENC_YCBCR) { S0 }
     ...>
 }
