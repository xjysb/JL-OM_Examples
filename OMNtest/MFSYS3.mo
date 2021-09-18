package MFSYS3

model MFSYS3_rt
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p3(P (displayUnit = "Pa") = 5000000)  annotation(
    Placement(visible = true, transformation(origin = {-92, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000)  annotation(
    Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552,cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001)  annotation(
    Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0)  annotation(
    Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03,Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159)  annotation(
    Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
    Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {136, -7}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {172, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {188, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {187, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
    Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-54, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = 17.44) annotation(
    Placement(visible = true, transformation(origin = {-94, -116}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain(k = 0.015)  annotation(
    Placement(visible = true, transformation(origin = {-14, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
    Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  connect(o1.port_out, volume_Boundary2.port[1]) annotation(
    Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
  connect(constP_Boundary.port, JL_HSV.T) annotation(
    Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
  connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
    Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
  connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
    Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
  connect(GDHM.port_out, volume_Boundary5.port[1]) annotation(
    Line(points = {{108.25, 1.25}, {136.25, 1.25}}, color = {0, 127, 255}));
  connect(volume_Boundary5.port[2], ZPZ.port_in) annotation(
    Line(points = {{136, 0.9}, {157, 0.9}, {157, 1.9}}, color = {0, 127, 255}));
  connect(FPZ.port_in, volume_Boundary5.port[3]) annotation(
    Line(points = {{173.2, -15.6}, {137.7, -15.6}, {137.7, 1.4}, {136.2, 1.4}}, color = {0, 127, 255}));
  connect(GDHM.port_left, P0.port) annotation(
    Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -32.75}, {187.25, -32.75}}, color = {0, 127, 255}));
  connect(P0.port, FPZ.port_out) annotation(
    Line(points = {{186.8, -33.2}, {202.8, -33.2}, {202.8, -16.2}}, color = {0, 127, 255}));
  connect(P0.port, ZPZ.port_out) annotation(
    Line(points = {{186.8, -33.2}, {186.8, 1.8}}, color = {0, 127, 255}));
  connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
    Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
    Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
    Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
  connect(constant1.y, add.u1) annotation(
    Line(points = {{-83, -116}, {-66, -116}}, color = {0, 0, 127}));
  add.u2 = JLHM.x * 1000;
  connect(add.y, gain.u) annotation(
    Line(points = {{-43, -122}, {-27, -122}}, color = {0, 0, 127}));
  connect(gain.y, JL_HSV.I_in) annotation(
    Line(points = {{-3, -122}, {23, -122}, {23, -116}}, color = {0, 0, 127}));
  connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
    Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
  connect(volume_Boundary8.port[1], DYHM.port_right) annotation(
    Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
  connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
    Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
  connect(p3.port, DYHM.port_out) annotation(
    Line(points = {{-92.2, 17.8}, {-92.2, -2.4}, {-54.4, -2.4}, {-54.4, -10.4}}, color = {0, 127, 255}));
  connect(YCHM.port_in, orificeCircle1.port_in) annotation(
    Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
  connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
    Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
  connect(GDHM.port_in, GDHM.port_right) annotation(
    Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
  connect(GDHM.port_in, JLHM.port_out) annotation(
    Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
  connect(volume_Boundary.port[1], GDHM.port_in) annotation(
    Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
  connect(JLHM.port_out, YCHM.port_in) annotation(
    Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_out, P_HYout.port) annotation(
    Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
  connect(JLHM.port_in, HYHM.port_in) annotation(
    Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_right, HYHM.port_in) annotation(
    Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
  connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
    Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
  connect(YCHM.port_out, o1.port_out) annotation(
    Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
  connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
    Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
  connect(YCHM.port_right, o1.port_in) annotation(
    Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
  connect(p3.port, JLHM.port_in) annotation(
    Line(points = {{-92.2, 17.8}, {43.8, 17.8}, {43.8, 7.8}}, color = {0, 127, 255}));
  connect(p3.port, YCHM.port_right) annotation(
    Line(points = {{-92.2, 17.8}, {-92.2, 23.8}, {-14.2, 23.8}, {-14.2, 81.8}, {-32.2, 81.8}}, color = {0, 127, 255}));
protected
  annotation(
    Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
  uses(Modelica(version = "3.2.3")));

end MFSYS3_rt;

model MFSYS3_pump
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000)  annotation(
    Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552,cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001)  annotation(
    Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0)  annotation(
    Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03,Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159)  annotation(
    Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
    Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {136, -7}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {172, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {188, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {187, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
    Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-54, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant1(k = 17.44) annotation(
    Placement(visible = true, transformation(origin = {-94, -116}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain(k = 0.015)  annotation(
    Placement(visible = true, transformation(origin = {-14, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
    Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.GearPump.GearPump gearPump(ETA_V_const = 0.975, displ = 44.4865 * 1e-6 / 2 / 3.1415926, eta_mode_constant = true, flow_mode_average = true)  annotation(
    Placement(visible = true, transformation(origin = {-166, -21}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary1(P(displayUnit = "Pa") = 450000) annotation(
    Placement(visible = true, transformation(origin = {-166, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary9(V = 10e-6, nPorts = 4) annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.Constant constant2(k = 6165.51) annotation(
    Placement(visible = true, transformation(origin = {-208, -68}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
equation
  
  connect(o1.port_out, volume_Boundary2.port[1]) annotation(
    Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
  connect(constP_Boundary.port, JL_HSV.T) annotation(
    Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
  connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
    Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
  connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
    Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
  connect(GDHM.port_out, volume_Boundary5.port[1]) annotation(
    Line(points = {{108.25, 1.25}, {136.25, 1.25}}, color = {0, 127, 255}));
  connect(volume_Boundary5.port[2], ZPZ.port_in) annotation(
    Line(points = {{136, 0.9}, {157, 0.9}, {157, 1.9}}, color = {0, 127, 255}));
  connect(FPZ.port_in, volume_Boundary5.port[3]) annotation(
    Line(points = {{173.2, -15.6}, {137.7, -15.6}, {137.7, 1.4}, {136.2, 1.4}}, color = {0, 127, 255}));
  connect(GDHM.port_left, P0.port) annotation(
    Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -32.75}, {187.25, -32.75}}, color = {0, 127, 255}));
  connect(P0.port, FPZ.port_out) annotation(
    Line(points = {{186.8, -33.2}, {202.8, -33.2}, {202.8, -16.2}}, color = {0, 127, 255}));
  connect(P0.port, ZPZ.port_out) annotation(
    Line(points = {{186.8, -33.2}, {186.8, 1.8}}, color = {0, 127, 255}));
  connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
    Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
    Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
    Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
  connect(constant1.y, add.u1) annotation(
    Line(points = {{-83, -116}, {-66, -116}}, color = {0, 0, 127}));
  add.u2 = JLHM.x * 1000;
  connect(add.y, gain.u) annotation(
    Line(points = {{-43, -122}, {-27, -122}}, color = {0, 0, 127}));
  connect(gain.y, JL_HSV.I_in) annotation(
    Line(points = {{-3, -122}, {23, -122}, {23, -116}}, color = {0, 0, 127}));
  connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
    Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
  connect(volume_Boundary8.port[1], DYHM.port_right) annotation(
    Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
  connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
    Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
  connect(YCHM.port_in, orificeCircle1.port_in) annotation(
    Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
  connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
    Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
  connect(GDHM.port_in, GDHM.port_right) annotation(
    Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
  connect(GDHM.port_in, JLHM.port_out) annotation(
    Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
  connect(volume_Boundary.port[1], GDHM.port_in) annotation(
    Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
  connect(JLHM.port_out, YCHM.port_in) annotation(
    Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_out, P_HYout.port) annotation(
    Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
  connect(JLHM.port_in, HYHM.port_in) annotation(
    Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_right, HYHM.port_in) annotation(
    Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
  connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
    Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
  connect(YCHM.port_out, o1.port_out) annotation(
    Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
  connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
    Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
  connect(YCHM.port_right, o1.port_in) annotation(
    Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
  connect(constP_Boundary1.port, gearPump.port_in) annotation(
    Line(points = {{-166, -72}, {-166, -43.5}}, color = {0, 127, 255}));
  connect(YCHM.port_right, volume_Boundary9.port[1]) annotation(
    Line(points = {{-32, 80}, {-18, 80}, {-18, 32}, {-110, 32}, {-110, 22}}, color = {0, 127, 255}));
  connect(JLHM.port_in, volume_Boundary9.port[2]) annotation(
    Line(points = {{44, 8}, {44, 22}, {-110, 22}}, color = {0, 127, 255}));
  connect(volume_Boundary9.port[3], DYHM.port_out) annotation(
    Line(points = {{-110, 22}, {-110, -2}, {-54, -2}, {-54, -10}}, color = {0, 127, 255}));
  connect(volume_Boundary9.port[4], gearPump.port_out) annotation(
    Line(points = {{-110, 22}, {-166, 22}, {-166, 1.5}}, color = {0, 127, 255}));
  connect(constant2.y, gearPump.N_CLB) annotation(
    Line(points = {{-196, -68}, {-181.5, -68}, {-181.5, -43}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
  uses(Modelica(version = "3.2.3")));

end MFSYS3_pump;

  model MFSYS3_Thermal
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552, cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001) annotation(
      Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20, d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0) annotation(
      Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
      Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03, Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159) annotation(
      Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
      Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
      Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
      Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
      Placement(visible = true, transformation(origin = {181, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {215, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {231, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {230, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
      Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle(d_hole = 0.0007, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {-112, -58}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000) annotation(
      Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Add add(k2 = -1) annotation(
      Placement(visible = true, transformation(origin = {-54, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Math.Gain gain(k = 0.00005) annotation(
      Placement(visible = true, transformation(origin = {-14, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
      Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.GearPump.GearPump_thermal gearPump_thermal(eta_mode_constant = true, flow_mode_average = true) annotation(
      Placement(visible = true, transformation(origin = {-182, -11}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary1(P(displayUnit = "Pa") = 450000) annotation(
      Placement(visible = true, transformation(origin = {-182, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
      Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary9(V = 10e-6, nPorts = 4) annotation(
      Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Blocks.Sources.TimeTable timeTable(table = [0, 5181.35; 2, 5181.35; 2.00001, 4300.82; 4, 4300.82; 4.00001, 3893.5; 6, 3893.5; 6.00001, 5761.182; 8, 5761.182; 8.00001, 5031.6; 10, 5031.6; 10.00001, 6147.537; 12, 6147.537; 12.00001, 6169.7; 14, 6169.7; 14.00001, 6147.537; 16, 6147.537; 16.00001, 6169.7; 18, 6169.7; 18.00001, 5990; 20, 5990; 20.00001, 6136.755; 22, 6136.755; 22.00001, 6149.933; 24, 6149.933; 24.00001, 6165.507; 26, 6165.507; 26.00001, 6149.933; 28, 6149.933], timeScale = 1) annotation(
      Placement(visible = true, transformation(origin = {-228, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable timeTable1(table = [0, 5.9; 6, 5.9; 6.00001, 6; 14, 6; 14.00001, 6.1; 20, 6.1; 20.00001, 6; 22, 6; 22.00001, 6.1; 28, 6.1], timeScale = 1) annotation(
      Placement(visible = true, transformation(origin = {-146, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    Modelica.Blocks.Sources.TimeTable timeTable2(table = [0, 298.8; 2, 298.8; 2.00001, 302.4; 4, 302.4; 4.00001, 378; 6, 378; 6.00001, 608.4; 8, 608.4; 8.00001, 979.2; 10, 979.2; 10.00001, 1065.6; 12, 1065.6; 12.00001, 1227.6; 14, 1227.6; 14.00001, 4420.8; 16, 4420.8; 16.00001, 5382; 18, 5382; 18.00001, 5860.8; 20, 5860.8; 20.00001, 6051.6; 22, 6051.6; 22.00001, 7657.2; 24, 7657.2; 24.00001, 7826.4; 26, 7826.4; 26.00001, 8488.8; 28, 8488.8], timeScale = 1) annotation(
      Placement(visible = true, transformation(origin = {-100, -116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    gearPump_thermal.Wf = GDHM.port_in.m_dot;
    connect(o1.port_out, volume_Boundary2.port[1]) annotation(
      Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
    connect(constP_Boundary.port, JL_HSV.T) annotation(
      Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
    connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
      Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
    connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
      Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
    connect(volume_Boundary5.port[1], ZPZ.port_in) annotation(
      Line(points = {{181, 2}, {200, 2}, {200, 1.9}}, color = {0, 127, 255}));
    connect(FPZ.port_in, volume_Boundary5.port[2]) annotation(
      Line(points = {{216.2, -15.6}, {180.7, -15.6}, {180.7, 2}, {181, 2}}, color = {0, 127, 255}));
    connect(GDHM.port_left, P0.port) annotation(
      Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -33}, {230, -33}}, color = {0, 127, 255}));
    connect(P0.port, FPZ.port_out) annotation(
      Line(points = {{229.8, -33.2}, {245.8, -33.2}, {245.8, -16.2}}, color = {0, 127, 255}));
    connect(P0.port, ZPZ.port_out) annotation(
      Line(points = {{229.8, -33.2}, {229.8, 1.8}}, color = {0, 127, 255}));
    connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
      Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
    connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
      Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
    connect(orificeCircle.port_in, volume_Boundary8.port[1]) annotation(
      Line(points = {{-111.6, -43.2}, {-111.6, -42.7}, {-93.6, -42.7}, {-93.6, -42.2}}, color = {0, 127, 255}));
    connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
      Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
    add.u2 = GDHM.port_in.m_dot * 3600;
    connect(add.y, gain.u) annotation(
      Line(points = {{-43, -122}, {-27, -122}}, color = {0, 0, 127}));
    connect(gain.y, JL_HSV.I_in) annotation(
      Line(points = {{-3, -122}, {23, -122}, {23, -116}}, color = {0, 0, 127}));
    connect(orificeCircle.port_out, constP_Boundary.port) annotation(
      Line(points = {{-111.6, -72.8}, {-93.6, -72.8}, {-93.6, -71.8}}, color = {0, 127, 255}));
    connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
      Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
    connect(volume_Boundary8.port[2], DYHM.port_right) annotation(
      Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
    connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
      Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
    connect(YCHM.port_in, orificeCircle1.port_in) annotation(
      Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
    connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
      Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
    connect(GDHM.port_in, GDHM.port_right) annotation(
      Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
    connect(GDHM.port_in, JLHM.port_out) annotation(
      Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
    connect(volume_Boundary.port[1], GDHM.port_in) annotation(
      Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
    connect(JLHM.port_out, YCHM.port_in) annotation(
      Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
    connect(HYHM.port_out, P_HYout.port) annotation(
      Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
    connect(JLHM.port_in, HYHM.port_in) annotation(
      Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
    connect(HYHM.port_right, HYHM.port_in) annotation(
      Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
    connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
      Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
    connect(YCHM.port_out, o1.port_out) annotation(
      Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
    connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
      Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
    connect(YCHM.port_right, o1.port_in) annotation(
      Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
    connect(gearPump_thermal.port_in, constP_Boundary1.port) annotation(
      Line(points = {{-182, -30}, {-182, -82}}, color = {0, 127, 255}));
    connect(YCHM.port_right, volume_Boundary9.port[1]) annotation(
      Line(points = {{-32, 80}, {-16, 80}, {-16, 34}, {-110, 34}, {-110, 22}}, color = {0, 127, 255}));
    connect(JLHM.port_in, volume_Boundary9.port[2]) annotation(
      Line(points = {{44, 8}, {44, 22}, {-110, 22}}, color = {0, 127, 255}));
    connect(DYHM.port_out, volume_Boundary9.port[3]) annotation(
      Line(points = {{-54, -10}, {-52, -10}, {-52, 8}, {-110, 8}, {-110, 22}}, color = {0, 127, 255}));
    connect(gearPump_thermal.port_out, volume_Boundary9.port[4]) annotation(
      Line(points = {{-182, 8}, {-182, 22}, {-110, 22}}, color = {0, 127, 255}));
    connect(GDHM.port_out, volume_Boundary5.port[3]) annotation(
      Line(points = {{108, 2}, {182, 2}}, color = {0, 127, 255}));
    connect(timeTable.y, gearPump_thermal.N_CLB) annotation(
      Line(points = {{-217, -44}, {-194, -44}, {-194, -30}}, color = {0, 0, 127}));
    connect(timeTable1.y, gearPump_thermal.deltaT) annotation(
      Line(points = {{-157, -52}, {-170, -52}, {-170, -30}}, color = {0, 0, 127}));
    connect(timeTable2.y, add.u1) annotation(
      Line(points = {{-89, -116}, {-66, -116}}, color = {0, 0, 127}));
  protected
    annotation(
      Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
      uses(Modelica(version = "3.2.3")));
  end MFSYS3_Thermal;

model MFSYS3_Thermal_convectiontest
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000)  annotation(
    Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552,cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001)  annotation(
    Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0)  annotation(
    Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03,Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159)  annotation(
    Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
    Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {181, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {215, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {231, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {230, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle(d_hole = 0.0007, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-112, -58}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
    Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-54, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 0.00005)  annotation(
    Placement(visible = true, transformation(origin = {-14, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
    Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary1(P(displayUnit = "Pa") = 450000) annotation(
    Placement(visible = true, transformation(origin = {-184, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary9(V = 10e-6, nPorts = 4) annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.TimeTable timeTable(table = [0, 5181.35; 2, 5181.35; 2.00001, 4300.82; 4, 4300.82; 4.00001, 3893.5; 6, 3893.5; 6.00001, 5761.182; 8, 5761.182; 8.00001, 5031.6; 10, 5031.6; 10.00001, 6147.537; 12, 6147.537; 12.00001, 6169.7; 14, 6169.7; 14.00001, 6147.537; 16, 6147.537; 16.00001, 6169.7; 18, 6169.7; 18.00001, 5990; 20, 5990; 20.00001, 6136.755; 22, 6136.755; 22.00001, 6149.933; 24, 6149.933; 24.00001, 6165.507; 26, 6165.507; 26.00001, 6149.933; 28, 6149.933], timeScale = 1)  annotation(
    Placement(visible = true, transformation(origin = {-226, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.TimeTable timeTable1(table = [0, 5.9; 6, 5.9; 6.00001, 6; 14, 6; 14.00001, 6.1; 20, 6.1; 20.00001, 6; 22, 6; 22.00001, 6.1; 28, 6.1], timeScale = 1) annotation(
    Placement(visible = true, transformation(origin = {-174, -102}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Blocks.Sources.TimeTable timeTable2(table = [0, 298.8; 2, 298.8; 2.00001, 302.4; 4, 302.4; 4.00001, 378; 6, 378; 6.00001, 608.4; 8, 608.4; 8.00001, 979.2; 10, 979.2; 10.00001, 1065.6; 12, 1065.6; 12.00001, 1227.6; 14, 1227.6; 14.00001, 4420.8; 16, 4420.8; 16.00001, 5382; 18, 5382; 18.00001, 5860.8; 20, 5860.8; 20.00001, 6051.6; 22, 6051.6; 22.00001, 7657.2; 24, 7657.2; 24.00001, 7826.4; 26, 7826.4; 26.00001, 8488.8; 28, 8488.8], timeScale = 1) annotation(
    Placement(visible = true, transformation(origin = {-100, -116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.GearPump.GearPump_thermal_convection gearPump_thermal_convection(eta_mode_constant = true, flow_mode_average = true)  annotation(
    Placement(visible = true, transformation(origin = {-184, -17}, extent = {{-28, -28}, {28, 28}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant2(k = 60000) annotation(
    Placement(visible = true, transformation(origin = {-246, 4}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.GearPump.Thermal_convection thermal_convection annotation(
    Placement(visible = true, transformation(origin = {-158, 54}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.T_Boundary t_Boundary annotation(
    Placement(visible = true, transformation(origin = {-160, 94}, extent = {{-36, -36}, {36, 36}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant constant3(k = 20 + 273.15) annotation(
    Placement(visible = true, transformation(origin = {-226, 88}, extent = {{10, -10}, {-10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.TimeTable timeTable3(table = [0, 266; 2, 266; 2.00001, 199.9; 4, 199.9; 4.00001, 175; 6, 175; 6.00001, 152.3; 8, 152.3; 8.00001, 165.9; 10, 165.9; 10.00001, 141.1; 12, 141.1; 12.00001, 126.6; 14, 126.6; 14.00001, 105.4; 16, 105.4; 16.00001, 100.6; 18, 100.6; 18.00001, 101.6; 20, 101.6; 20.00001, 101.9; 22, 101.9; 22.00001, 100.2; 24, 100.2; 24.00001, 99.4; 26, 99.4; 26.00001, 98.5; 28, 98.5], timeScale = 1) annotation(
    Placement(visible = true, transformation(origin = {-138, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  gearPump_thermal_convection.Wf = GDHM.port_in.m_dot;
  connect(o1.port_out, volume_Boundary2.port[1]) annotation(
    Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
  connect(constP_Boundary.port, JL_HSV.T) annotation(
    Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
  connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
    Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
  connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
    Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
  connect(volume_Boundary5.port[1], ZPZ.port_in) annotation(
    Line(points = {{181, 2}, {200, 2}, {200, 1.9}}, color = {0, 127, 255}));
  connect(FPZ.port_in, volume_Boundary5.port[2]) annotation(
    Line(points = {{216.2, -15.6}, {180.7, -15.6}, {180.7, 2}, {181, 2}}, color = {0, 127, 255}));
  connect(GDHM.port_left, P0.port) annotation(
    Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -33}, {230, -33}}, color = {0, 127, 255}));
  connect(P0.port, FPZ.port_out) annotation(
    Line(points = {{229.8, -33.2}, {245.8, -33.2}, {245.8, -16.2}}, color = {0, 127, 255}));
  connect(P0.port, ZPZ.port_out) annotation(
    Line(points = {{229.8, -33.2}, {229.8, 1.8}}, color = {0, 127, 255}));
  connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
    Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
    Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
  connect(orificeCircle.port_in, volume_Boundary8.port[1]) annotation(
    Line(points = {{-111.6, -43.2}, {-111.6, -42.7}, {-93.6, -42.7}, {-93.6, -42.2}}, color = {0, 127, 255}));
  connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
    Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
  add.u2 = GDHM.port_in.m_dot * 3600;
  connect(add.y, gain.u) annotation(
    Line(points = {{-43, -122}, {-27, -122}}, color = {0, 0, 127}));
  connect(gain.y, JL_HSV.I_in) annotation(
    Line(points = {{-3, -122}, {23, -122}, {23, -116}}, color = {0, 0, 127}));
  connect(orificeCircle.port_out, constP_Boundary.port) annotation(
    Line(points = {{-111.6, -72.8}, {-93.6, -72.8}, {-93.6, -71.8}}, color = {0, 127, 255}));
  connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
    Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
  connect(volume_Boundary8.port[2], DYHM.port_right) annotation(
    Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
  connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
    Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
  connect(YCHM.port_in, orificeCircle1.port_in) annotation(
    Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
  connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
    Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
  connect(GDHM.port_in, GDHM.port_right) annotation(
    Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
  connect(GDHM.port_in, JLHM.port_out) annotation(
    Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
  connect(volume_Boundary.port[1], GDHM.port_in) annotation(
    Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
  connect(JLHM.port_out, YCHM.port_in) annotation(
    Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_out, P_HYout.port) annotation(
    Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
  connect(JLHM.port_in, HYHM.port_in) annotation(
    Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_right, HYHM.port_in) annotation(
    Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
  connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
    Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
  connect(YCHM.port_out, o1.port_out) annotation(
    Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
  connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
    Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
  connect(YCHM.port_right, o1.port_in) annotation(
    Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
  connect(YCHM.port_right, volume_Boundary9.port[1]) annotation(
    Line(points = {{-32, 80}, {-16, 80}, {-16, 34}, {-110, 34}, {-110, 22}}, color = {0, 127, 255}));
  connect(JLHM.port_in, volume_Boundary9.port[2]) annotation(
    Line(points = {{44, 8}, {44, 22}, {-110, 22}}, color = {0, 127, 255}));
  connect(DYHM.port_out, volume_Boundary9.port[3]) annotation(
    Line(points = {{-54, -10}, {-52, -10}, {-52, 8}, {-110, 8}, {-110, 22}}, color = {0, 127, 255}));
  connect(GDHM.port_out, volume_Boundary5.port[3]) annotation(
    Line(points = {{108, 2}, {182, 2}}, color = {0, 127, 255}));
  connect(timeTable2.y, add.u1) annotation(
    Line(points = {{-89, -116}, {-66, -116}}, color = {0, 0, 127}));
  connect(gearPump_thermal_convection.port_out, volume_Boundary9.port[4]) annotation(
    Line(points = {{-184, 8}, {-184, 22}, {-110, 22}}, color = {0, 127, 255}));
  connect(gearPump_thermal_convection.port_in, constP_Boundary1.port) annotation(
    Line(points = {{-184, -42}, {-184, -68}}, color = {0, 127, 255}));
  connect(timeTable.y, gearPump_thermal_convection.N_CLB) annotation(
    Line(points = {{-214, -64}, {-200, -64}, {-200, -42}}, color = {0, 0, 127}));
  connect(gearPump_thermal_convection.deltaT, timeTable1.y) annotation(
    Line(points = {{-174, -42}, {-174, -91}}, color = {0, 0, 127}));
  connect(constant2.y, gearPump_thermal_convection.Power_total) annotation(
    Line(points = {{-234, 4}, {-209, 4}}, color = {0, 0, 127}));
  connect(thermal_convection.port_in, gearPump_thermal_convection.port_T) annotation(
    Line(points = {{-158, 40}, {-158, 4}}, color = {191, 0, 0}));
  connect(t_Boundary.port, thermal_convection.port_out) annotation(
    Line(points = {{-158, 94}, {-158, 72}}, color = {191, 0, 0}));
  connect(constant3.y, t_Boundary.T_in) annotation(
    Line(points = {{-214, 88}, {-174, 88}}, color = {0, 0, 127}));
  connect(timeTable3.y, gearPump_thermal_convection.T_in) annotation(
    Line(points = {{-148, -62}, {-162, -62}, {-162, -42}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
  uses(Modelica(version = "3.2.3")));

end MFSYS3_Thermal_convectiontest;

model MFSYS3_Thermal_zhengxiang
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000)  annotation(
    Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552,cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001)  annotation(
    Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0)  annotation(
    Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
    Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03,Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159)  annotation(
    Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
    Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
    Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {181, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {215, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {231, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {230, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
    Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle(d_hole = 0.0007, lamc = 1000) annotation(
    Placement(visible = true, transformation(origin = {-112, -58}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
    Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-54, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 0.00005)  annotation(
    Placement(visible = true, transformation(origin = {-14, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
    Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary1(P(displayUnit = "Pa") = 450000) annotation(
    Placement(visible = true, transformation(origin = {-184, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
    Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary9(V = 10e-6, nPorts = 4) annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Sources.TimeTable timeTable(table = [0, 5181.35; 2, 5181.35; 2.00001, 4300.82; 4, 4300.82; 4.00001, 3893.5; 6, 3893.5; 6.00001, 5761.182; 8, 5761.182; 8.00001, 5031.6; 10, 5031.6; 10.00001, 6147.537; 12, 6147.537; 12.00001, 6169.7; 14, 6169.7; 14.00001, 6147.537; 16, 6147.537; 16.00001, 6169.7; 18, 6169.7; 18.00001, 5990; 20, 5990; 20.00001, 6136.755; 22, 6136.755; 22.00001, 6149.933; 24, 6149.933; 24.00001, 6165.507; 26, 6165.507; 26.00001, 6149.933; 28, 6149.933], timeScale = 1)  annotation(
    Placement(visible = true, transformation(origin = {-228, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.TimeTable timeTable2(table = [0, 298.8; 2, 298.8; 2.00001, 302.4; 4, 302.4; 4.00001, 378; 6, 378; 6.00001, 608.4; 8, 608.4; 8.00001, 979.2; 10, 979.2; 10.00001, 1065.6; 12, 1065.6; 12.00001, 1227.6; 14, 1227.6; 14.00001, 4420.8; 16, 4420.8; 16.00001, 5382; 18, 5382; 18.00001, 5860.8; 20, 5860.8; 20.00001, 6051.6; 22, 6051.6; 22.00001, 7657.2; 24, 7657.2; 24.00001, 7826.4; 26, 7826.4; 26.00001, 8488.8; 28, 8488.8], timeScale = 1) annotation(
    Placement(visible = true, transformation(origin = {-100, -116}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.GearPump.GearPump_thermal_zhengxiang gearPump_thermal_zhengxiang(eta_mode_constant = true, flow_mode_average = true)  annotation(
    Placement(visible = true, transformation(origin = {-184, -12}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
  Modelica.Blocks.Sources.TimeTable timeTable1(table = [0, 266; 2, 266; 2.00001, 199.9; 4, 199.9; 4.00001, 175; 6, 175; 6.00001, 152.3; 8, 152.3; 8.00001, 165.9; 10, 165.9; 10.00001, 141.1; 12, 141.1; 12.00001, 126.6; 14, 126.6; 14.00001, 105.4; 16, 105.4; 16.00001, 100.6; 18, 100.6; 18.00001, 101.6; 20, 101.6; 20.00001, 101.9; 22, 101.9; 22.00001, 100.2; 24, 100.2; 24.00001, 99.4; 26, 99.4; 26.00001, 98.5; 28, 98.5], timeScale = 1) annotation(
    Placement(visible = true, transformation(origin = {-144, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
equation
  gearPump_thermal_zhengxiang.Wf = GDHM.port_in.m_dot+1e-9;
  connect(o1.port_out, volume_Boundary2.port[1]) annotation(
    Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
  connect(constP_Boundary.port, JL_HSV.T) annotation(
    Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
  connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
    Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
  connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
    Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
  connect(volume_Boundary5.port[1], ZPZ.port_in) annotation(
    Line(points = {{181, 2}, {200, 2}, {200, 1.9}}, color = {0, 127, 255}));
  connect(FPZ.port_in, volume_Boundary5.port[2]) annotation(
    Line(points = {{216.2, -15.6}, {180.7, -15.6}, {180.7, 2}, {181, 2}}, color = {0, 127, 255}));
  connect(GDHM.port_left, P0.port) annotation(
    Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -33}, {230, -33}}, color = {0, 127, 255}));
  connect(P0.port, FPZ.port_out) annotation(
    Line(points = {{229.8, -33.2}, {245.8, -33.2}, {245.8, -16.2}}, color = {0, 127, 255}));
  connect(P0.port, ZPZ.port_out) annotation(
    Line(points = {{229.8, -33.2}, {229.8, 1.8}}, color = {0, 127, 255}));
  connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
    Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
  connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
    Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
  connect(orificeCircle.port_in, volume_Boundary8.port[1]) annotation(
    Line(points = {{-111.6, -43.2}, {-111.6, -42.7}, {-93.6, -42.7}, {-93.6, -42.2}}, color = {0, 127, 255}));
  connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
    Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
  add.u2 = GDHM.port_in.m_dot * 3600;
  connect(add.y, gain.u) annotation(
    Line(points = {{-43, -122}, {-27, -122}}, color = {0, 0, 127}));
  connect(gain.y, JL_HSV.I_in) annotation(
    Line(points = {{-3, -122}, {23, -122}, {23, -116}}, color = {0, 0, 127}));
  connect(orificeCircle.port_out, constP_Boundary.port) annotation(
    Line(points = {{-111.6, -72.8}, {-93.6, -72.8}, {-93.6, -71.8}}, color = {0, 127, 255}));
  connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
    Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
  connect(volume_Boundary8.port[2], DYHM.port_right) annotation(
    Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
  connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
    Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
  connect(YCHM.port_in, orificeCircle1.port_in) annotation(
    Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
  connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
    Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
  connect(GDHM.port_in, GDHM.port_right) annotation(
    Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
  connect(GDHM.port_in, JLHM.port_out) annotation(
    Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
  connect(volume_Boundary.port[1], GDHM.port_in) annotation(
    Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
  connect(JLHM.port_out, YCHM.port_in) annotation(
    Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_out, P_HYout.port) annotation(
    Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
  connect(JLHM.port_in, HYHM.port_in) annotation(
    Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
  connect(HYHM.port_right, HYHM.port_in) annotation(
    Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
  connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
    Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
  connect(YCHM.port_out, o1.port_out) annotation(
    Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
  connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
    Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
  connect(YCHM.port_right, o1.port_in) annotation(
    Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
  connect(YCHM.port_right, volume_Boundary9.port[1]) annotation(
    Line(points = {{-32, 80}, {-16, 80}, {-16, 34}, {-110, 34}, {-110, 22}}, color = {0, 127, 255}));
  connect(JLHM.port_in, volume_Boundary9.port[2]) annotation(
    Line(points = {{44, 8}, {44, 22}, {-110, 22}}, color = {0, 127, 255}));
  connect(DYHM.port_out, volume_Boundary9.port[3]) annotation(
    Line(points = {{-54, -10}, {-52, -10}, {-52, 8}, {-110, 8}, {-110, 22}}, color = {0, 127, 255}));
  connect(GDHM.port_out, volume_Boundary5.port[3]) annotation(
    Line(points = {{108, 2}, {182, 2}}, color = {0, 127, 255}));
  connect(timeTable2.y, add.u1) annotation(
    Line(points = {{-89, -116}, {-66, -116}}, color = {0, 0, 127}));
  connect(gearPump_thermal_zhengxiang.port_out, volume_Boundary9.port[4]) annotation(
    Line(points = {{-184, 10}, {-184, 22}, {-110, 22}}, color = {0, 127, 255}));
  connect(timeTable.y, gearPump_thermal_zhengxiang.N_CLB) annotation(
    Line(points = {{-216, -44}, {-198, -44}, {-198, -34}}, color = {0, 0, 127}));
  connect(constP_Boundary1.port, gearPump_thermal_zhengxiang.port_in) annotation(
    Line(points = {{-184, -84}, {-184, -34}}, color = {0, 127, 255}));
  connect(timeTable1.y, gearPump_thermal_zhengxiang.T_in) annotation(
    Line(points = {{-154, -58}, {-170, -58}, {-170, -34}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
  uses(Modelica(version = "3.2.3")));

end MFSYS3_Thermal_zhengxiang;

  model MYS_export
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p3(P (displayUnit = "Pa") = 5000000)  annotation(
      Placement(visible = true, transformation(origin = {-92, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1(lamc = 1000)  annotation(
      Placement(visible = true, transformation(origin = {34, 102}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(ckvmx = 0.552,cvf = 20, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -20, k = 2300, lim_ed = 0.018, lim_st = -0.0005, m = 0.40556, mode_drct = true, n = 2, table = [0, 0; 0.005, 0.000005; 0.006, 6.58333e-6; 0.007, 9.33333e-6; 0.008, 0.00001325; 0.009, 1.83333e-5; 0.01, 2.45833e-5; 0.011, 0.000032; 0.012, 4.05833e-5; 0.013, 5.03333e-5; 0.014, 0.00006125; 0.015, 7.33333e-5; 0.016, 8.65833e-5; 0.017, 0.000101; 0.02, 0.000146], x0 = -0.0001)  annotation(
      Placement(visible = true, transformation(origin = {25, 9}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT HYHM(cvf = 20,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = 220, k = 9800, lim_ed = 0, lim_st = -0.011, m = 0.074084, mode_drct = false, table = [0, 0; 0.5 * 1e-3, 1.572 * 1e-6; 1 * 1e-3, 3.78 * 1e-6; 1.5 * 1e-3, 6.34 * 1e-6; 2 * 1e-3, 9.252 * 1e-6; 3 * 1e-3, 16.132 * 1e-6; 4 * 1e-3, 24.428 * 1e-6; 5 * 1e-3, 34.132 * 1e-6; 6 * 1e-3, 45.244 * 1e-6; 7 * 1e-3, 60.536 * 1e-6; 8 * 1e-3, 85.232 * 1e-6; 9 * 1e-3, 116.412 * 1e-6], x0 = 0)  annotation(
      Placement(visible = true, transformation(origin = {104, 48}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {-94, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 10e-6, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 1) annotation(
      Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(I_R = 0.03,Ksi = 0.8, Mu_R = 0.7, P_R = 999999.9999999999, W_R = 0.0208, Wn = 80 * 2 * 3.14159)  annotation(
      Placement(visible = true, transformation(origin = {21, -97}, extent = {{-21, -21}, {21, 21}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {42, -42}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {2, -48}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P_HYout(P(displayUnit = "Pa") = 850000) annotation(
      Placement(visible = true, transformation(origin = {156, 49}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle1(d_hole = 0.001, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {-77, 80}, extent = {{16, -16}, {-16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary4(V = 10e-6, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {-59, 117}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.7, cvf = 20, d_hole = 0.008, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = 41.59, k = 8710, lim_ed = 0.01, lim_st = -0.01, m = 0.018028, mode_drct = false, n_hole = 2, x0 = 0) annotation(
      Placement(visible = true, transformation(origin = {-47, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT GDHM(cvf = 20, d_pst_vec = {0.015, 0.015}, d_rod_vec = {0, 0}, f_pre = 230, k = 20000, lim_ed = 0, lim_st = -0.015, m = 0.062219, mode_drct = false, table = [0, 0; 3 * 1e-3, 6 * 1e-6; 4 * 1e-3, 17 * 1e-6; 15 * 1e-3, 250 * 1e-6], x0 = 0) annotation(
      Placement(visible = true, transformation(origin = {90, 2}, extent = {{20, -20}, {-20, 20}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary5(V = 1e-5, nPorts = 3) annotation(
      Placement(visible = true, transformation(origin = {136, -7}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle ZPZ(ckvmx = 1, d_hole = 0.005967, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {172, 2}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle FPZ(ckvmx = 1, d_hole = 0.00156766, lamc = 1000) annotation(
      Placement(visible = true, transformation(origin = {188, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary P0(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {187, -33}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary6(V = 7.5398e-6, nPorts = 3) annotation(
      Placement(visible = true, transformation(origin = {-28, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary8(V = 7.5398e-6, nPorts = 1) annotation(
      Placement(visible = true, transformation(origin = {-94, -34}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
    inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
      Placement(visible = true, transformation(origin = {-124, 122}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 20, d_hole = 0.0016, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -98.9809, k = 5370, lim_ed = 0.005, m = 0.022269, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0003) annotation(
      Placement(visible = true, transformation(origin = {-53, -29}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary7(V = 10e-6, nPorts = 0) annotation(
      Placement(visible = true, transformation(origin = {86, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealVectorOutput MFS_Output[2] annotation(
      Placement(visible = true, transformation(origin = {106, -118}, extent = {{-12, -12}, {12, 12}}, rotation = 0), iconTransformation(origin = {111, -1}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput MFS_Input annotation(
      Placement(visible = true, transformation(origin = {-46, -114}, extent = {{-14, -14}, {14, 14}}, rotation = 0), iconTransformation(origin = {-113, -1}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 0.001) annotation(
      Placement(visible = true, transformation(origin = {1, -115}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  equation
    connect(o1.port_out, volume_Boundary2.port[1]) annotation(
      Line(points = {{48.8, 102.4}, {85.8, 102.4}}, color = {0, 127, 255}));
    connect(constP_Boundary.port, JL_HSV.T) annotation(
      Line(points = {{-94.2, -72.2}, {25.3, -72.2}, {25.3, -78.2}, {24.8, -78.2}}, color = {0, 127, 255}));
    connect(JL_HSV.B, volume_Boundary1.port[1]) annotation(
      Line(points = {{33.18, -78.1}, {34.18, -78.1}, {34.18, -42.1}}, color = {0, 127, 255}));
    connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
      Line(points = {{10.5, -78.1}, {10.5, -48.1}, {10, -48.1}}, color = {0, 127, 255}));
    connect(GDHM.port_out, volume_Boundary5.port[1]) annotation(
      Line(points = {{108.25, 1.25}, {136.25, 1.25}}, color = {0, 127, 255}));
    connect(volume_Boundary5.port[2], ZPZ.port_in) annotation(
      Line(points = {{136, 0.9}, {157, 0.9}, {157, 1.9}}, color = {0, 127, 255}));
    connect(FPZ.port_in, volume_Boundary5.port[3]) annotation(
      Line(points = {{173.2, -15.6}, {137.7, -15.6}, {137.7, 1.4}, {136.2, 1.4}}, color = {0, 127, 255}));
    connect(GDHM.port_left, P0.port) annotation(
      Line(points = {{108.25, -12.75}, {108.5, -12.75}, {108.5, -32.75}, {187.25, -32.75}}, color = {0, 127, 255}));
    connect(P0.port, FPZ.port_out) annotation(
      Line(points = {{186.8, -33.2}, {202.8, -33.2}, {202.8, -16.2}}, color = {0, 127, 255}));
    connect(P0.port, ZPZ.port_out) annotation(
      Line(points = {{186.8, -33.2}, {186.8, 1.8}}, color = {0, 127, 255}));
    connect(volume_Boundary3.port[2], JLHM.port_right) annotation(
      Line(points = {{9.9, -48}, {9.9, -20}, {44, -20}, {44, -6}}, color = {0, 127, 255}));
    connect(volume_Boundary1.port[2], JLHM.port_left) annotation(
      Line(points = {{34.1, -42}, {34.1, -28}, {6, -28}, {6, -6}}, color = {0, 127, 255}));
    connect(volume_Boundary6.port[1], JL_HSV.P) annotation(
      Line(points = {{-28, -47.9}, {-28, -77.9}, {2, -77.9}}, color = {0, 127, 255}));
    connect(DYHM.port_in, volume_Boundary6.port[2]) annotation(
      Line(points = {{-53.2625, -48.1625}, {-28.2625, -48.1625}}, color = {0, 127, 255}));
    connect(volume_Boundary8.port[1], DYHM.port_right) annotation(
      Line(points = {{-94, -41.9}, {-94, -47.9}, {-68, -47.9}}, color = {0, 127, 255}));
    connect(DYHM.port_left, volume_Boundary6.port[3]) annotation(
      Line(points = {{-68.4875, -9.8375}, {-68.4875, 4.1625}, {-28.4875, 4.1625}, {-28.4875, -47.8375}}, color = {0, 127, 255}));
    connect(p3.port, DYHM.port_out) annotation(
      Line(points = {{-92.2, 17.8}, {-92.2, -2.4}, {-54.4, -2.4}, {-54.4, -10.4}}, color = {0, 127, 255}));
    connect(YCHM.port_in, orificeCircle1.port_in) annotation(
      Line(points = {{-46.75, 80.25}, {-61.75, 80.25}}, color = {0, 127, 255}));
    connect(orificeCircle1.port_out, volume_Boundary4.port[1]) annotation(
      Line(points = {{-91.8, 80.4}, {-91.8, 109.4}, {-58.8, 109.4}}, color = {0, 127, 255}));
    connect(GDHM.port_in, GDHM.port_right) annotation(
      Line(points = {{71.75, 2.25}, {71.75, -11.75}}, color = {0, 127, 255}));
    connect(GDHM.port_in, JLHM.port_out) annotation(
      Line(points = {{71.75, 1.25}, {5.75, 1.25}, {5.75, 9.25}}, color = {0, 127, 255}));
    connect(volume_Boundary.port[1], GDHM.port_in) annotation(
      Line(points = {{72, 16.1}, {72, 0.0999996}}, color = {0, 127, 255}));
    connect(JLHM.port_out, YCHM.port_in) annotation(
      Line(points = {{5.8375, 8.2125}, {5.8375, 92.2125}, {-47.1625, 92.2125}, {-47.1625, 79.2125}}, color = {0, 127, 255}));
    connect(HYHM.port_out, P_HYout.port) annotation(
      Line(points = {{122.25, 48.75}, {156.25, 48.75}}, color = {0, 127, 255}));
    connect(JLHM.port_in, HYHM.port_in) annotation(
      Line(points = {{44.1625, 8.2125}, {56.1625, 8.2125}, {56.1625, 48.2125}, {86.1625, 48.2125}}, color = {0, 127, 255}));
    connect(HYHM.port_right, HYHM.port_in) annotation(
      Line(points = {{85.75, 63.75}, {85.75, 49.75}}, color = {0, 127, 255}));
    connect(volume_Boundary2.port[2], HYHM.port_left) annotation(
      Line(points = {{86, 102.1}, {122, 102.1}, {122, 63.1}}, color = {0, 127, 255}));
    connect(YCHM.port_out, o1.port_out) annotation(
      Line(points = {{-46.75, 43.75}, {-46.75, 37.75}, {48.25, 37.75}, {48.25, 102.75}}, color = {0, 127, 255}));
    connect(volume_Boundary4.port[2], YCHM.port_left) annotation(
      Line(points = {{-59, 109.1}, {-3, 109.1}, {-3, 29.1}, {-33, 29.1}, {-33, 43.1}}, color = {0, 127, 255}));
    connect(YCHM.port_right, o1.port_in) annotation(
      Line(points = {{-32.25, 80.25}, {-32.25, 102.25}, {19.75, 102.25}}, color = {0, 127, 255}));
    connect(p3.port, JLHM.port_in) annotation(
      Line(points = {{-92.2, 17.8}, {43.8, 17.8}, {43.8, 7.8}}, color = {0, 127, 255}));
    connect(p3.port, YCHM.port_right) annotation(
      Line(points = {{-92.2, 17.8}, {-92.2, 23.8}, {-14.2, 23.8}, {-14.2, 81.8}, {-32.2, 81.8}}, color = {0, 127, 255}));
    MFS_Output[1] = JLHM.x*1000;
//m to mm
    MFS_Output[2] = JLHM.port_in.m_dot;
  connect(MFS_Input, gain.u) annotation(
      Line(points = {{-46, -114}, {-24, -114}, {-24, -115}, {-5, -115}}, color = {0, 0, 127}));
  connect(gain.y, JL_HSV.I_in) annotation(
      Line(points = {{6.5, -115}, {8, -115}, {8, -116}, {22, -116}}, color = {0, 0, 127}));
  protected
    annotation(
      Diagram(graphics = {Text(origin = {-67, 140}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}),
    uses(Modelica(version = "3.2.3")));
  

  end MYS_export;

  model MFSYS3_Test
  
  MFSYS3.MYS_export MFS annotation(
      Placement(visible = true, transformation(origin = {48, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
      Placement(visible = true, transformation(origin = {-30, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 15) annotation(
      Placement(visible = true, transformation(origin = {10, 8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.TimeTable timeTable(table = [0, 0; 1, 0; 1.001, 0.0267; 3, 0.0267; 3.001, 0.0919; 5, 0.0919; 5.001, 0.1539; 7, 0.1539; 7.001, 0.2525; 9, 0.2525; 9.001, 0.4962; 11, 0.4692; 11.001, 0.8008; 13, 0.8008; 13.001, 1.2408; 15, 1.2408; 15.001, 1.8092; 17, 1.8092; 17.001, 2.3; 19, 2.3])  annotation(
      Placement(visible = true, transformation(origin = {-72, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  connect(add.y, gain.u) annotation(
      Line(points = {{-19, 8}, {-3, 8}}, color = {0, 0, 127}));
  connect(gain.y, MFS.MFS_Input) annotation(
      Line(points = {{21, 8}, {35, 8}}, color = {0, 0, 127}));
  connect(MFS.MFS_Output[1], add.u2) annotation(
      Line(points = {{59.1, 7.9}, {69.1, 7.9}, {69.1, -14.1}, {-52.9, -14.1}, {-52.9, 1.9}, {-42.9, 1.9}}, color = {0, 0, 127}));
  connect(timeTable.y, add.u1) annotation(
      Line(points = {{-61, 14}, {-43, 14}}, color = {0, 0, 127}));
  end MFSYS3_Test;
  annotation(
    uses(Modelica(version = "3.2.3")));

end MFSYS3;
