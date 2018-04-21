//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0->vm_end
+ vm_end_gap(E0)
//# pattern-13, witnesses: 3
@@
expression E0;
@@
- E0 = vma->vm_start
+ E0 = vm_start_gap(vma)
//# pattern-15, witnesses: 3
@@
expression E0;
@@
- E0 <= vma->vm_start
+ E0 <= vm_start_gap(vma)
//# pattern-11, witnesses: 2
@@
identifier is_pid;
identifier m;
identifier vma;
@@
 void show_map_vma(struct seq_file * m, struct vm_area_struct * vma, int is_pid)
 {
     <...
- if () {
- }
     ...>
 }
