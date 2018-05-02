//# pattern-1, witnesses: 2
@@
statement S0;
@@
- if (acpi_ex_interpreter_trace_enabled(NULL)) { S0 }
+ if (acpi_ex_interpreter_trace_enabled(NULL) && acpi_gbl_trace_flags & ACPI_TRACE_OPCODE) { S0 }
