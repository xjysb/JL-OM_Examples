model HSV_test
  
  parameter Modelica.SIunits.Current I_in = 0.002;

  CL4CSM.Hydro_Mech_Library.HydraulicServoValve.HydraulicServoValve_34 hsv(I_R = 0.31)  annotation(
    Placement(visible = true, transformation(origin = {2, 18}, extent = {{-58, -58}, {58, 58}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary(P(displayUnit = "Pa") = 0) annotation(
    Placement(visible = true, transformation(origin = {-4, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.ConstP_Boundary constP_Boundary2(P(displayUnit = "Pa") = 2e6) annotation(
    Placement(visible = true, transformation(origin = {48, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  CL4CSM.Hydro_Mech_Library.Boundary.Volume_Boundary v(B = 1700000000, V = 1e-5, nPorts = 2)  annotation(
    Placement(visible = true, transformation(origin = {16, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));

equation
  
  I_in = hsv.I;
  connect(constP_Boundary.port, hsv.T) annotation(
    Line(points = {{-4, -58}, {-4, 6}}, color = {0, 127, 255}));
  connect(constP_Boundary2.port, hsv.P) annotation(
    Line(points = {{48, -58}, {28, -58}, {28, 6}}, color = {0, 127, 255}));
  connect(hsv.B, v.port[1]) annotation(
    Line(points = {{-14, 6}, {-14, -84}, {16, -84}}, color = {0, 127, 255}));
  connect(hsv.A, v.port[2]) annotation(
    Line(points = {{16, 6}, {16, -84}}, color = {0, 127, 255}));
end HSV_test;
