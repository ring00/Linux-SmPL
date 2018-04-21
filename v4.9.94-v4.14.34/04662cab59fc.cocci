//# pattern-6, witnesses: 2
@@
expression F0;
@@
- spinlock_t * lock = lock;
- if (conn->flags & FSNOTIFY_OBJ_TYPE_INODE) {
- lock = &conn->inode->i_lock;
- }
- F0(lock);
+ F0(&conn->lock);
//# pattern-8, witnesses: 2
@@
identifier conn;
@@
 void fsnotify_destroy_marks(struct fsnotify_mark_connector * conn)
 {
     <...
- spinlock_t * lock = lock;
- if (conn->flags & FSNOTIFY_OBJ_TYPE_INODE) {
- lock = &conn->inode->i_lock;
- }
     ...>
 }
//# pattern-10, witnesses: 2
@@
expression F0;
identifier conn;
identifier group;
@@
 struct fsnotify_mark * fsnotify_find_mark(struct fsnotify_mark_connector * conn, struct fsnotify_group * group)
 {
     <...
- spinlock_t * lock = lock;
- if (conn->flags & FSNOTIFY_OBJ_TYPE_INODE) {
- lock = &conn->inode->i_lock;
- }
- F0(lock);
+ F0(&conn->lock);
     ...>
 }
