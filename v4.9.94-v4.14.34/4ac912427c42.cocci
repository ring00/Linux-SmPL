//# pattern-2, witnesses: 3
@r0@
identifier fn;
expression P0, P1;
@@
update_free_nid_bitmap(P0, P1, fn)
@@
expression IL0;
typedef bool;
identifier build;
identifier nid;
typedef nid_t;
identifier sbi;
@@
- int add_free_nid(struct f2fs_sb_info * sbi, nid_t nid, bool build)
+ bool add_free_nid(struct f2fs_sb_info * sbi, nid_t nid, bool build)
 {
     <...
- return IL0;
+ return true;
     ...>
 }
//# pattern-1, witnesses: 2
@r1@
identifier fn;
expression P0, P1;
@@
update_free_nid_bitmap(P0, P1, fn)
@@
typedef bool;
identifier build;
identifier nid;
typedef nid_t;
identifier sbi;
@@
 bool add_free_nid(struct f2fs_sb_info * sbi, nid_t nid, bool build)
 {
     <...
- return 0;
+ return false;
     ...>
 }
