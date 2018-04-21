//# pattern-1, witnesses: 23
@@
@@
- 1 << inode->i_blkbits
+ i_blocksize(inode)
//# pattern-2, witnesses: 2
@@
@@
- round_down(offset, 1 << inode->i_blkbits)
+ round_down(offset, i_blocksize(inode))
