//# pattern-4, witnesses: 2
@@
expression E0;
identifier fn;
identifier smp;
typedef u8;
@@
 u8 fn(struct smp_chan * smp)
 {
     <...
- memset(E0 + smp->enc_key_size, 0, SMP_MAX_ENC_KEY_SIZE - smp->enc_key_size);
     ...>
 }
