package MFSYS7
  model MFSYS7_export
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p2(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {88, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p3(P = 3200000) annotation(
      Placement(visible = true, transformation(origin = {-88, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1 annotation(
      Placement(visible = true, transformation(origin = {18, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 5, d_hole = 0.0022, d_pst_vec = {0.01, 0.01}, d_rod_vec = {0, 0}, f_pre = -123.78, k = 14562, lim_ed = 0.005, m = 0.02, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0036) annotation(
      Placement(visible = true, transformation(origin = {-63, -23}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.6, cvf = 5, d_hole = 0.001, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -39, k = 8711, lim_ed = 0.0043, lim_st = -0.0005, m = 0.05, n_hole = 2, x0 = -0.0005) annotation(
      Placement(visible = true, transformation(origin = {-28, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(cvf = 15, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -3.3, k = 2279, lim_ed = 0.0209, m = 0.1, x_start = 0.005) annotation(
      Placement(visible = true, transformation(origin = {13, 17}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT PTF(cvf = 5, d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = -245, k = 9800, lim_ed = 0.0125, m = 0.05, table = [0, 0; 1 * 1e-3, 3.7717 * 1e-6; 2 * 1e-3, 9.23 * 1e-6; 3 * 1e-3, 16.1 * 1e-6; 4 * 1e-3, 24.4 * 1e-6; 5 * 1e-3, 34.1 * 1e-6; 6 * 1e-3, 45.2 * 1e-6; 7 * 1e-3, 59.7 * 1e-6; 8 * 1e-3, 81.16 * 1e-6; 9 * 1e-3, 109.78 * 1e-6; 10 * 1e-3, 145.5 * 1e-6; 11 * 1e-3, 186.2 * 1e-6], x0 = -0.0015) annotation(
      Placement(visible = true, transformation(origin = {60, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
      Placement(visible = true, transformation(origin = {-86, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {45, 81}, extent = {{-5, -5}, {5, 5}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {68, -10}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle(d_hole = 0.01) annotation(
      Placement(visible = true, transformation(origin = {72, 18}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary DY_Vol(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {-40, -24}, extent = {{-6, -6}, {6, 6}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(Ksi = 0.8, Mu_R = 0.8, P_R = 999999.9999999999, W_R = 0.0325, Wn = 80 * 2 * 3.14159) annotation(
      Placement(visible = true, transformation(origin = {17, -65}, extent = {{-19, -19}, {19, 19}}, rotation = 180)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {30, -26}, extent = {{-6, -6}, {6, 6}}, rotation = 90)));
    CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
      Placement(visible = true, transformation(origin = {-6, -26}, extent = {{-6, -6}, {6, 6}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput u annotation(
      Placement(visible = true, transformation(origin = {77, -85}, extent = {{-11, -11}, {11, 11}}, rotation = 180), iconTransformation(origin = {-80, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealOutput y[2] annotation(
      Placement(visible = true, transformation(origin = {76, -44}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    inner CL4CSM.Hydro_Mech_Library.System system annotation(
      Placement(visible = true, transformation(origin = {-68, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Interfaces.RealInput FLAG annotation(
      Placement(visible = true, transformation(origin = {-102, -84}, extent = {{-14, -14}, {14, 14}}, rotation = 0), iconTransformation(origin = {-80, -78}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  equation
    connect(DYHM.port_in, DYHM.port_left) annotation(
      Line(points = {{-62, -28}, {-72, -28}, {-72, -8}}, color = {0, 127, 255}));
    connect(DYHM.port_right, constP_Boundary.port) annotation(
      Line(points = {{-72, -38}, {-86, -38}, {-86, -54}}, color = {0, 127, 255}));
    connect(p3.port, YCHM.port_left) annotation(
      Line(points = {{-88, 30}, {-20, 30}, {-20, 48}}, color = {0, 127, 255}));
    connect(YCHM.port_left, PTF.port_left) annotation(
      Line(points = {{-20, 48}, {68, 48}}, color = {0, 127, 255}));
    connect(YCHM.port_left, o1.port_in) annotation(
      Line(points = {{-20, 48}, {14, 48}, {14, 78}}, color = {0, 127, 255}));
    connect(YCHM.port_right, YCHM.port_in) annotation(
      Line(points = {{-20, 76}, {-28, 76}, {-28, 68}}, color = {0, 127, 255}));
    connect(YCHM.port_out, o1.port_out) annotation(
      Line(points = {{-28, 58}, {22, 58}, {22, 78}}, color = {0, 127, 255}));
    connect(o1.port_out, volume_Boundary2.port[1]) annotation(
      Line(points = {{22, 78}, {31, 78}, {31, 77}, {45, 77}}, color = {0, 127, 255}));
    connect(volume_Boundary2.port[2], PTF.port_right) annotation(
      Line(points = {{45, 77}, {68, 77}, {68, 76}}, color = {0, 127, 255}));
    connect(PTF.port_out, p2.port) annotation(
      Line(points = {{60, 58}, {88, 58}, {88, 18}}, color = {0, 127, 255}));
    connect(PTF.port_in, PTF.port_left) annotation(
      Line(points = {{60, 68}, {68, 68}, {68, 48}}, color = {0, 127, 255}));
    connect(YCHM.port_in, JLHM.port_out) annotation(
      Line(points = {{-28, 68}, {8, 68}, {8, 18}}, color = {0, 127, 255}));
    connect(p3.port, JLHM.port_in) annotation(
      Line(points = {{-88, 30}, {18, 30}, {18, 18}}, color = {0, 127, 255}));
    connect(JLHM.port_out, volume_Boundary.port[1]) annotation(
      Line(points = {{8, 18}, {68, 18}, {68, -5}}, color = {0, 127, 255}));
    connect(orificeCircle.port_in, volume_Boundary.port[2]) annotation(
      Line(points = {{68, 18}, {68, -5}}, color = {0, 127, 255}));
    connect(orificeCircle.port_out, p2.port) annotation(
      Line(points = {{76, 18}, {88, 18}}, color = {0, 127, 255}));
    connect(DYHM.port_in, DY_Vol.port[1]) annotation(
      Line(points = {{-62, -28}, {-50, -28}, {-50, -29}, {-40, -29}}, color = {0, 127, 255}));
    connect(p3.port, DYHM.port_out) annotation(
      Line(points = {{-88, 30}, {-62, 30}, {-62, -18}}, color = {0, 127, 255}));
    connect(constP_Boundary.port, JL_HSV.T) annotation(
      Line(points = {{-86, -54}, {-32, -54}, {-32, -48}, {20, -48}}, color = {0, 127, 255}));
    connect(JL_HSV.P, DY_Vol.port[2]) annotation(
      Line(points = {{0, -48}, {-27, -48}, {-27, -29}, {-40, -29}}, color = {0, 127, 255}));
    connect(JLHM.port_right, volume_Boundary1.port[1]) annotation(
      Line(points = {{28, 8}, {25, 8}, {25, -26}}, color = {0, 127, 255}));
    connect(JL_HSV.B, volume_Boundary1.port[2]) annotation(
      Line(points = {{28, -48}, {28, -37}, {25, -37}, {25, -26}}, color = {0, 127, 255}));
    connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
      Line(points = {{7.5, -48}, {7.5, -40.5}, {-1, -40.5}, {-1, -26}}, color = {0, 127, 255}));
    connect(JLHM.port_left, volume_Boundary3.port[2]) annotation(
      Line(points = {{-2, 8}, {-2, -9}, {-1, -9}, {-1, -26}}, color = {0, 127, 255}));
    connect(u, JL_HSV.I_in) annotation(
      Line(points = {{77, -85}, {19, -85}, {19, -82}}, color = {0, 0, 127}));
  //  when sample(0,0.02) then
      if FLAG > 0 then
        y[1] = JLHM.x*1000;
        y[2] = -orificeCircle.port_out.m_dot;
      else
        y[1] = (5/10)*time;
        y[2] = (0.1667/10)*time;
      end if;
  //  end when;
  protected
    annotation(
      Diagram(graphics = {Text(origin = {-59, 90}, extent = {{33, -4}, {-33, 4}}, textString = "rk;tol:1e-6;step:5e-5")}));
  end MFSYS7_export;



model MFSYS7_test
  
  import SI = Modelica.SIunits;
  parameter SI.Time pulse_time = 100;
  parameter SI.Frequency sin_freq = 1;
  parameter SI.Current sin_amp = 0.003;
  MFSYS7.MFSYS7_export exportfmu annotation(
    Placement(visible = true, transformation(origin = {10, -8}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));

equation

  if time < pulse_time then
    exportfmu.u = -0.03;
  elseif time < 1 then
    exportfmu.u = 0;
  else 
    exportfmu.u = sin_amp*Modelica.Math.sin(6.28*sin_freq*time);
  end if;
  
  exportfmu.FLAG = 1;

end MFSYS7_test;


model MFSYS7_model
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p2(P (displayUnit = "bar") = 200000)  annotation(
    Placement(visible = true, transformation(origin = {88, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary p3(P = 3200000)  annotation(
    Placement(visible = true, transformation(origin = {-88, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle o1 annotation(
    Placement(visible = true, transformation(origin = {18, 78}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC DYHM(cvf = 5, d_hole = 0.0022, d_pst_vec = {0.01, 0.01}, d_rod_vec = {0, 0}, f_pre = -123.78, k = 14562, lim_ed = 0.005, m = 0.02, mode_drct = false, n = 2, n_hole = 6, x0 = 0.0036)  annotation(
    Placement(visible = true, transformation(origin = {-63, -23}, extent = {{-21, -21}, {21, 21}}, rotation = -90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesC YCHM(ckvmx = 0.6, cvf = 5, d_hole = 0.001, d_pst_vec = {0.008, 0.008}, d_rod_vec = {0, 0}, f_pre = -39, k = 8711, lim_ed = 0.0043, lim_st = -0.0005, m = 0.05, n_hole = 2, x0 = -0.0005)  annotation(
    Placement(visible = true, transformation(origin = {-28, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT JLHM(cvf = 15, d_pst_vec = {0.035, 0.035}, d_rod_vec = {0, 0}, f_pre = -3.3, k = 2279, lim_ed = 0.0209, m = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {13, 17}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.PistonValves.PistonValvesT PTF(cvf = 5,d_pst_vec = {0.025, 0.025}, d_rod_vec = {0, 0}, f_pre = -245, k = 9800, lim_ed = 0.0125, m = 0.05, table = [0, 0; 1*1e-3, 3.7717*1e-6; 2*1e-3, 9.23*1e-6; 3*1e-3, 16.1*1e-6; 4*1e-3, 24.4*1e-6; 5*1e-3, 34.1*1e-6; 6*1e-3, 45.2*1e-6; 7*1e-3, 59.7*1e-6; 8*1e-3, 81.16*1e-6; 9*1e-3, 109.78*1e-6; 10*1e-3, 145.5*1e-6; 11*1e-3, 186.2*1e-6], x0 = -0.0015)  annotation(
    Placement(visible = true, transformation(origin = {60, 62}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "bar") = 200000) annotation(
    Placement(visible = true, transformation(origin = {-86, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary2(V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {45, 83}, extent = {{-7, -7}, {7, 7}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary(V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {68, -10}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Orifice.OrificeCircle orificeCircle(d_hole = 0.01)  annotation(
    Placement(visible = true, transformation(origin = {72, 18}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary DY_Vol(V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-41, -25}, extent = {{-7, -7}, {7, 7}}, rotation = 180)));
  Modelica.Blocks.Sources.Constant const(k = -0.03) annotation(
    Placement(visible = true, transformation(origin = {68, -82}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 JL_HSV(Ksi = 0.8, Mu_R = 0.8, P_R = 999999.9999999999, W_R = 0.0325, Wn = 80 * 2 * 3.14159)  annotation(
    Placement(visible = true, transformation(origin = {17, -65}, extent = {{-19, -19}, {19, 19}}, rotation = 180)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary1(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {33, -27}, extent = {{-7, -7}, {7, 7}}, rotation = 90)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary volume_Boundary3(ConsdDyn = true, V = 1e-5, nPorts = 2) annotation(
    Placement(visible = true, transformation(origin = {-7, -23}, extent = {{-7, -7}, {7, 7}}, rotation = -90)));
  inner CL4CSM.Hydro_Mech_Library.System system(B = 1700000000)  annotation(
      Placement(visible = true, transformation(origin = {-76, 62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  connect(DYHM.port_in, DYHM.port_left) annotation(
    Line(points = {{-62, -28}, {-72, -28}, {-72, -8}}, color = {0, 127, 255}));
  connect(DYHM.port_right, constP_Boundary.port) annotation(
    Line(points = {{-72, -38}, {-86, -38}, {-86, -54}}, color = {0, 127, 255}));
  connect(p3.port, YCHM.port_left) annotation(
    Line(points = {{-88, 30}, {-20, 30}, {-20, 48}}, color = {0, 127, 255}));
  connect(YCHM.port_left, PTF.port_left) annotation(
    Line(points = {{-20, 48}, {68, 48}}, color = {0, 127, 255}));
  connect(YCHM.port_left, o1.port_in) annotation(
      Line(points = {{-20, 48}, {3, 48}, {3, 78}}, color = {0, 127, 255}));
  connect(YCHM.port_right, YCHM.port_in) annotation(
    Line(points = {{-20, 76}, {-28, 76}, {-28, 68}}, color = {0, 127, 255}));
  connect(YCHM.port_out, o1.port_out) annotation(
      Line(points = {{-28, 58}, {33, 58}, {33, 78}}, color = {0, 127, 255}));
  connect(o1.port_out, volume_Boundary2.port[1]) annotation(
      Line(points = {{33, 78}, {31, 78}, {31, 77}, {45, 77}}, color = {0, 127, 255}));
  connect(volume_Boundary2.port[2], PTF.port_right) annotation(
      Line(points = {{45, 77}, {68, 77}, {68, 76}}, color = {0, 127, 255}));
  connect(PTF.port_out, p2.port) annotation(
    Line(points = {{60, 58}, {88, 58}, {88, 18}}, color = {0, 127, 255}));
  connect(PTF.port_in, PTF.port_left) annotation(
    Line(points = {{60, 68}, {68, 68}, {68, 48}}, color = {0, 127, 255}));
  connect(YCHM.port_in, JLHM.port_out) annotation(
    Line(points = {{-28, 68}, {8, 68}, {8, 18}}, color = {0, 127, 255}));
  connect(p3.port, JLHM.port_in) annotation(
    Line(points = {{-88, 30}, {18, 30}, {18, 18}}, color = {0, 127, 255}));
  connect(JLHM.port_out, volume_Boundary.port[1]) annotation(
      Line(points = {{8, 18}, {68, 18}, {68, -5}}, color = {0, 127, 255}));
  connect(orificeCircle.port_in, volume_Boundary.port[2]) annotation(
      Line(points = {{68, 18}, {68, -5}}, color = {0, 127, 255}));
  connect(orificeCircle.port_out, p2.port) annotation(
    Line(points = {{76, 18}, {88, 18}}, color = {0, 127, 255}));
  connect(DYHM.port_in, DY_Vol.port[1]) annotation(
      Line(points = {{-62, -28}, {-50, -28}, {-50, -31}, {-41, -31}}, color = {0, 127, 255}));
  connect(p3.port, DYHM.port_out) annotation(
    Line(points = {{-88, 30}, {-62, 30}, {-62, -18}}, color = {0, 127, 255}));
  connect(const.y, JL_HSV.I_in) annotation(
      Line(points = {{58, -82}, {19, -82}}, color = {0, 0, 127}));
  connect(constP_Boundary.port, JL_HSV.T) annotation(
      Line(points = {{-86, -54}, {-32, -54}, {-32, -48}, {20, -48}}, color = {0, 127, 255}));
  connect(JL_HSV.P, DY_Vol.port[2]) annotation(
      Line(points = {{0, -48}, {-41, -48}, {-41, -31}}, color = {0, 127, 255}));
  connect(JLHM.port_right, volume_Boundary1.port[1]) annotation(
      Line(points = {{28, 8}, {27, 8}, {27, -27}}, color = {0, 127, 255}));
  connect(JL_HSV.B, volume_Boundary1.port[2]) annotation(
      Line(points = {{28, -48}, {28, -37}, {27, -37}, {27, -27}}, color = {0, 127, 255}));
  connect(JL_HSV.A, volume_Boundary3.port[1]) annotation(
      Line(points = {{7.5, -48}, {7.5, -23}, {-1, -23}}, color = {0, 127, 255}));
  connect(JLHM.port_left, volume_Boundary3.port[2]) annotation(
      Line(points = {{-2, 8}, {-2, -8}, {-1, -8}, {-1, -23}}, color = {0, 127, 255}));

protected
  annotation(
    Diagram(graphics = {Text(origin = {-59, 90}, extent = {{33, -4}, {-33, 4}}, textString = "irk;tol:1e-4;NoI:1e4")}));

end MFSYS7_model;
  annotation(
    uses(Modelica(version = "3.2.3")));
end MFSYS7;
