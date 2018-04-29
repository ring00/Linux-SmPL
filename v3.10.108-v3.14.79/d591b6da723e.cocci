//# pattern-2, witnesses: 2
@@
@@
- efivar_validate(new_var->VariableName, new_var->Data, new_var->DataSize)
+ efivar_validate(new_var->VendorGuid, new_var->VariableName, new_var->Data, new_var->DataSize)
