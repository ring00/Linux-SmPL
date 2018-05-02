//# pattern-4, witnesses: 13
@@
@@
- chip->buffers->ecccalc
+ chip->ecc.calc_buf
//# pattern-5, witnesses: 13
@@
expression E0;
@@
- E0->buffers->databuf
+ E0->data_buf
//# pattern-1, witnesses: 8
@@
@@
- chip->buffers->ecccode
+ chip->ecc.code_buf
