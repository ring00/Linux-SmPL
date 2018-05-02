//# pattern-3, witnesses: 8
@@
identifier s;
@@
 struct bpf_reg_state * s = {
 };
//# pattern-42, witnesses: 4
@@
@@
- state->stack_slot_type[i]
+ state->stack[i].slot_type[0]
//# pattern-6, witnesses: 2
@@
expression E0;
@@
- state->spilled_regs[E0]
+ state->stack[i].spilled_ptr
//# pattern-14, witnesses: 2
@@
identifier s;
@@
 struct bpf_verifier_state * s = {
 };
//# pattern-25, witnesses: 2
@@
identifier s;
@@
 struct bpf_reg_state * s = {
 };
//# pattern-28, witnesses: 2
@@
expression E0;
@@
- &env->cur_state.regs[E0]
+ cur_regs(env) + E0
//# pattern-34, witnesses: 2
@@
expression E0;
identifier slot;
identifier state;
@@
 void mark_stack_slot_read(const struct bpf_verifier_state * state, int slot)
 {
     <...
- E0->spilled_regs[slot]
+ E0->stack[slot].spilled_ptr
     ...>
 }
