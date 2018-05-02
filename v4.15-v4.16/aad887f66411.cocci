//# pattern-3, witnesses: 15
@@
@@
- TPM_ANY_NUM
+ NULL
//# pattern-6, witnesses: 4
@@
@@
- trusted_tpm_send(TPM_ANY_NUM, tb->data, MAX_BUF_SIZE)
+ trusted_tpm_send(tb->data, MAX_BUF_SIZE)
//# pattern-5, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier chip_num;
identifier options;
identifier payload;
identifier r0.fn;
typedef u32;
@@
- int fn(u32 chip_num, struct trusted_key_payload * payload, struct trusted_key_options * options)
+ int fn(struct tpm_chip * chip, struct trusted_key_payload * payload, struct trusted_key_options * options)
 {
     <...
- struct tpm_chip * chip = chip;
- chip = tpm_chip_find_get(chip_num);
- if (chip == NULL || !chip->flags & TPM_CHIP_FLAG_TPM2) {
- }
+ chip = tpm_chip_find_get(chip);
+ if (!chip || !chip->flags & TPM_CHIP_FLAG_TPM2) {
+ }
     ...>
 }
