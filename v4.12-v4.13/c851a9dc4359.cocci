//# pattern-5, witnesses: 3
@@
@@
- p_hwfn->hw_info.personality == QED_PCI_ETH_ROCE
+ QED_IS_RDMA_PERSONALITY(p_hwfn)
//# pattern-3, witnesses: 2
@@
statement S0;
@@
- if (p_hwfn->hw_info.personality != QED_PCI_ETH_ROCE) { S0 }
+ if (!QED_IS_RDMA_PERSONALITY(p_hwfn)) { S0 }
