//# pattern-2, witnesses: 2
@@
@@
- bond_release(bond_dev, slave_dev)
+ __bond_release_one(bond_dev, slave_dev, false, true)
