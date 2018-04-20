//# pattern-1, witnesses: 2
@@
expression V0;
identifier delalloc;
identifier empty_size;
identifier flags;
identifier hint_byte;
identifier ins;
identifier num_bytes;
identifier orig_root;
identifier ram_bytes;
typedef u64;
@@
 int find_free_extent(struct btrfs_root * orig_root, u64 ram_bytes, u64 num_bytes, u64 empty_size, u64 hint_byte, struct btrfs_key * ins, u64 flags, int delalloc)
 {
     <...
- trace_btrfs_reserve_extent_cluster(root, V0, search_start, num_bytes)
+ trace_btrfs_reserve_extent_cluster(fs_info, V0, search_start, num_bytes)
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression E0;
expression E1;
@@
- trace_btrfs_reserved_extent_free(root, E0, E1)
+ trace_btrfs_reserved_extent_free(fs_info, E0, E1)
