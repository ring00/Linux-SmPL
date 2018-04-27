//# pattern-1, witnesses: 2
@@
@@
- rhltable_remove(&nf_nat_bysource_table, &ct->nat_bysource, nf_nat_bysource_params);
+ spin_lock_bh(&nf_nat_lock);
+ hlist_del_rcu(&ct->nat_bysource);
+ spin_unlock_bh(&nf_nat_lock);
