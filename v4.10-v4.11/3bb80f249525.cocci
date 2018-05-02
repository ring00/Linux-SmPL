//# pattern-8, witnesses: 3
@@
expression E0;
@@
- E0->bridge = bridge;
//# pattern-10, witnesses: 3
@@
expression E0;
expression E1;
identifier PV2;
@@
- E0->bridge = bridge;
- bridge->encoder = E1;
- ret = drm_bridge_attach(PV2, bridge);
+ ret = drm_bridge_attach(E1, bridge, NULL);
//# pattern-2, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
@@
- E0->encoder = encoder;
- encoder->bridge = E1;
- ret = drm_bridge_attach(drm, E2);
+ ret = drm_bridge_attach(encoder, E2, NULL);
//# pattern-3, witnesses: 2
@@
identifier hdmi;
identifier pdev;
@@
 int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi * hdmi, struct platform_device * pdev)
 {
     <...
- hdmi->bridge.next
+ hdmi->next_bridge
     ...>
 }
//# pattern-5, witnesses: 2
@@
@@
- dpi->encoder.bridge
+ dpi->bridge
//# pattern-9, witnesses: 2
@@
expression ME1;
identifier PV0;
@@
- bridge->encoder = &PV0->encoder;
- return drm_bridge_attach(ME1, bridge);
+ return drm_bridge_attach(&PV0->encoder, bridge, NULL);
