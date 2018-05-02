//# pattern-8, witnesses: 2
@@
identifier PV1;
expression V0;
@@
- ndlc_probe(phy, &V0, &PV1->dev, ST_NCI_FRAME_HEADROOM, ST_NCI_FRAME_TAILROOM, &phy->ndlc)
+ ndlc_probe(phy, &V0, &PV1->dev, ST_NCI_FRAME_HEADROOM, ST_NCI_FRAME_TAILROOM, &phy->ndlc, &phy->se_status)
