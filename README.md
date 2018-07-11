# Nested Function

```c
@@ -756,9 +761,6 @@ SHOW(__bch_cache)
 					       CACHE_REPLACEMENT(&ca->sb));
 
 	if (attr == &sysfs_priority_stats) {
-		int cmp(const void *l, const void *r)
-		{	return *((uint16_t *) r) - *((uint16_t *) l); }
-
 		struct bucket *b;
 		size_t n = ca->sb.nbuckets, i;
 		size_t unused = 0, available = 0, dirty = 0, meta = 0;
@@ -787,7 +789,7 @@ SHOW(__bch_cache)
 			p[i] = ca->buckets[i].prio;
 		mutex_unlock(&ca->set->bucket_lock);
 
-		sort(p, n, sizeof(uint16_t), cmp, NULL);
+		sort(p, n, sizeof(uint16_t), __bch_cache_cmp, NULL);
 
 		while (n &&
 		       !cached[n - 1])
```

对于函数 `g` 内的纯函数 `f`，在文件作用域中定义参数和实现相同的函数 `_g_f`，并将函数 `g` 内对函数 `f` 的使用替换为对函数 `_g_f` 的使用。

# VLA in struct

```c++
@@ -4551,11 +4551,9 @@ static int handle_reshape_read_error(struct mddev *mddev,
 	/* Use sync reads to get the blocks from somewhere else */
 	int sectors = r10_bio->sectors;
 	struct r10conf *conf = mddev->private;
-	struct {
-		struct r10bio r10_bio;
-		struct r10dev devs[conf->copies];
-	} on_stack;
-	struct r10bio *r10b = &on_stack.r10_bio;
+	/* Allocate space for r10bio on stack */
+	u8 r10bio_on_stack[sizeof(struct r10bio) + conf->copies * sizeof(struct r10dev)];
+	struct r10bio *r10b = (struct r10bio *) r10bio_on_stack;
 	int slot = 0;
 	int idx = 0;
 	struct page **pages;
```

对于结构体 `s`，假设结构体定义在函数 `f` 内部，且其中含有变长数组，则对于其中每一个成员变量 `a`，依次声明相同类型的变量 `_s_a`，并将 `f` 内对 `a` 的使用替换为对 `_s_a` 的使用。
