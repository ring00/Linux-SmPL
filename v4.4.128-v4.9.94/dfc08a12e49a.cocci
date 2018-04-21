//# pattern-1, witnesses: 6
@@
@@
- seg_i->sum_blk
+ seg_i->sum_blk->journal
//# pattern-4, witnesses: 3
@@
expression EC1;
expression ME0;
@@
- struct f2fs_summary_block * sum = curseg->sum_blk;
- if (!__has_cursum_space(sum, ME0, EC1)) {
- }
+ struct f2fs_journal * journal = &curseg->sum_blk->journal;
+ if (!__has_cursum_space(journal, ME0, EC1)) {
+ }
//# pattern-15, witnesses: 3
@@
expression E1;
expression EC0;
expression IL2;
@@
- lookup_journal_in_cursum(sum, EC0, E1, IL2)
+ lookup_journal_in_cursum(journal, EC0, E1, IL2)
//# pattern-26, witnesses: 3
@@
expression V0;
@@
- nat_in_journal(sum, V0)
+ nat_in_journal(journal, V0)
