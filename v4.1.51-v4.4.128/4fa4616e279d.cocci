//# pattern-1, witnesses: 26
@@
expression E0;
expression E1;
expression E2;
@@
- ACPI_MEMCPY(E0, E1, E2)
+ memcpy(E0, E1, E2)
//# pattern-2, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
@@
- ACPI_MEMSET(E0, E1, E2)
+ memset(E0, E1, E2)
//# pattern-3, witnesses: 2
@@
expression E0;
expression E1;
typedef acpi_status;
identifier actual_return_desc;
expression list listE2;
identifier operand0;
identifier operand1;
identifier walk_state;
@@
 acpi_status acpi_ex_do_concatenate(union acpi_operand_object * operand0, union acpi_operand_object * operand1, union acpi_operand_object ** actual_return_desc, struct acpi_walk_state * walk_state)
 {
     <...
- ACPI_STRCPY(E0, E1->string.pointer)
+ strcpy(listE2)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E1;
expression ME2;
expression V0;
expression list listE3;
@@
- ACPI_STRNCPY(V0, E1, ME2)
+ strncpy(listE3)
