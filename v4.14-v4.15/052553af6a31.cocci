//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier generic_phy;
identifier r0.fn;
@@
- int fn(struct phy * generic_phy)
+ int fn(struct ufs_qcom_phy * ufs_qcom_phy)
 {
     <...
- struct ufs_qcom_phy * ufs_qcom_phy = get_ufs_qcom_phy(generic_phy);
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression F1;
identifier s;
@@
 struct ufs_qcom_phy_specific_ops s = {
-    .calibrate_phy = F1,
 };
