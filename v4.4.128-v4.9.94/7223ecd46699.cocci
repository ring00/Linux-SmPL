//# pattern-5, witnesses: 2
@@
expression list listE0;
@@
- rhashtable_remove_fast(listE0)
+ rhltable_remove(listE0)
//# pattern-7, witnesses: 2
@@
expression list listE0;
@@
- rhashtable_destroy(listE0)
+ rhltable_destroy(listE0)
