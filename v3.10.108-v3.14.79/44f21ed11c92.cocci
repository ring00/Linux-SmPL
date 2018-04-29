//# pattern-3, witnesses: 4
@r0@
identifier i, fn;
@@
struct variable_validate i = {
    .validate = fn,
};
@@
typedef bool;
identifier buffer;
identifier len;
identifier match;
identifier r0.fn;
identifier var;
@@
- bool fn(struct efi_variable * var, int match, u8 * buffer, unsigned long len)
+ bool fn(efi_char16_t * var_name, int match, u8 * buffer, unsigned long len)
 { ... }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct variable_validate i = {
    .validate = fn,
};
@@
expression E0;
typedef bool;
identifier buffer;
identifier len;
identifier match;
identifier var_name;
@@
 bool validate_load_option(efi_char16_t * var_name, int match, u8 * buffer, unsigned long len)
 {
     <...
- var->VariableName[E0]
+ var_name[E0]
     ...>
 }
//# pattern-9, witnesses: 2
@@
@@
- efivar_validate(new_var, new_var->Data, new_var->DataSize)
+ efivar_validate(new_var->VariableName, new_var->Data, new_var->DataSize)
