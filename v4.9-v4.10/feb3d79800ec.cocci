//# pattern-4, witnesses: 4
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
- void fn(struct phy * generic_phy)
+ void fn(struct ufs_qcom_phy * phy)
 {
     <...
- struct ufs_qcom_phy * phy = get_ufs_qcom_phy(generic_phy);
     ...>
 }
