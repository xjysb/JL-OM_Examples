package platform
  model platform_nsensor
    Real Measure, NGG, N1, Wf_a, Lm_a, Error, Wf_cmd, Lm_cmd, Im, flag, T5;
    //,detUN,detUT,Wfb4lim,errN,errT;
    CL4CSM.Sensor_Library.Examples.RotorSpeedSensorExport rotorSpeedSensorExport annotation(
      Placement(visible = true, transformation(origin = {110, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  protected
    EngineTest et1 annotation(
      Placement(visible = true, transformation(origin = {51, 71}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable XiaoTaiJie(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {-96, 38}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Controller Ctrl annotation(
      Placement(visible = true, transformation(origin = {-38, 22}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    MFSYS7.MFSYS7_export MFSYS7_export annotation(
      Placement(visible = true, transformation(origin = {24, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay NGGDelay(samplePeriod = 0.02, y_start = 700) annotation(
      Placement(visible = true, transformation(origin = {7, 99}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant T2(k = 288.15) annotation(
      Placement(visible = true, transformation(origin = {-15, 87}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant P2(k = 101.325) annotation(
      Placement(visible = true, transformation(origin = {-43, 77}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant VSV(k = 0) annotation(
      Placement(visible = true, transformation(origin = {-21, 63}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay1(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -61}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay2(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -43}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay4(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -27}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2 annotation(
      Placement(visible = true, transformation(origin = {51, 15}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay3(samplePeriod = 0.02, y_start = 0) annotation(
      Placement(visible = true, transformation(origin = {3, -9}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  equation
    connect(T2.y, et1.T2) annotation(
      Line(points = {{-7.3, 87}, {31.4, 87}, {31.4, 85.5}, {32, 85.5}, {32, 86}}, color = {0, 0, 127}));
    connect(P2.y, et1.P2) annotation(
      Line(points = {{-35.3, 77}, {-1.65, 77}, {-1.65, 79}, {32, 79}}, color = {0, 0, 127}));
    connect(VSV.y, et1.VSV) annotation(
      Line(points = {{-13, 63}, {32, 63}}, color = {0, 0, 127}));
    connect(NGGDelay.y, Ctrl.NGG) annotation(
      Line(points = {{1.5, 99}, {-66, 99}, {-66, 31}, {-56, 31}}, color = {0, 0, 127}));
    connect(et1.N1, unitDelay1.u) annotation(
      Line(points = {{70, 76}, {94, 76}, {94, -61}, {9, -61}}, color = {0, 0, 127}));
    connect(unitDelay1.y, Ctrl.N1) annotation(
      Line(points = {{-2.5, -61}, {-82, -61}, {-82, 25}, {-56, 25}}, color = {0, 0, 127}));
    connect(et1.T5, unitDelay2.u) annotation(
      Line(points = {{70, 66}, {88, 66}, {88, -43}, {9, -43}}, color = {0, 0, 127}));
    connect(unitDelay2.y, Ctrl.T5) annotation(
      Line(points = {{-2.5, -43}, {-74, -43}, {-74, 19}, {-56, 19}}, color = {0, 0, 127}));
    connect(et1.P3, unitDelay4.u) annotation(
      Line(points = {{70, 56}, {80, 56}, {80, -27}, {9, -27}}, color = {0, 0, 127}));
    connect(unitDelay4.y, Ctrl.P3) annotation(
      Line(points = {{-2.5, -27}, {-66, -27}, {-66, 8}, {-56, 8}}, color = {0, 0, 127}));
    connect(Ctrl.ImMF, MFSYS7_export.u) annotation(
      Line(points = {{-20, 35}, {-4.36, 35}, {-4.36, 15.96}, {15.64, 15.96}}, color = {0, 0, 127}));
    connect(MFSYS7_export.y, deMultiplex2.u) annotation(
      Line(points = {{33, 16}, {39.5, 16}, {39.5, 15}, {43, 15}}, color = {0, 0, 127}, thickness = 0.5));
    connect(deMultiplex2.y1[1], unitDelay3.u) annotation(
      Line(points = {{58.7, 19.2}, {67.7, 19.2}, {67.7, -8.8}, {8.7, -8.8}}, color = {0, 0, 127}));
    connect(unitDelay3.y, Ctrl.Lm) annotation(
      Line(points = {{-2.5, -9}, {-68, -9}, {-68, 14}, {-56, 14}}, color = {0, 0, 127}));
    connect(Ctrl.Flag, MFSYS7_export.FLAG) annotation(
      Line(points = {{-20, 8}, {16, 8}}, color = {0, 0, 127}));
    connect(Ctrl.Flag, et1.Flag) annotation(
      Line(points = {{-20, 8}, {10, 8}, {10, 56}, {32, 56}}, color = {0, 0, 127}));
    connect(deMultiplex2.y2[1], et1.Wf) annotation(
      Line(points = {{58, 10}, {64, 10}, {64, 48}, {18, 48}, {18, 72}, {32, 72}}, color = {0, 0, 127}));
    when sample(0, 0.02) then
      Measure = rotorSpeedSensorExport.y_rpm;
      NGG = et1.NGG;
      N1 = et1.N1;
      Wf_a = et1.Wf;
      Lm_a = Ctrl.Lm;
      Error = et1.EngOut[1];
      Lm_cmd = Ctrl.LMcmd;
      Wf_cmd = Ctrl.Wf;
      Im = Ctrl.ImMF;
      flag = Ctrl.Flag;
      T5 = et1.T5;
//    detUN = Ctrl.CtrlOut[5];
//    detUT = Ctrl.CtrlOut[6];
//    Wfb4lim = Ctrl.CtrlOut[7];
//    errN = Ctrl.CtrlOut[8];
//    errT = Ctrl.CtrlOut[9];
    end when;
    connect(XiaoTaiJie.y, Ctrl.PLA) annotation(
      Line(points = {{-85, 38}, {-56, 38}}, color = {0, 0, 127}));
    connect(et1.NGG, rotorSpeedSensorExport.u_rpm) annotation(
      Line(points = {{70, 86}, {102, 86}}, color = {0, 0, 127}));
    connect(rotorSpeedSensorExport.y_rpm, NGGDelay.u) annotation(
      Line(points = {{120, 86}, {130, 86}, {130, 100}, {14, 100}}, color = {0, 0, 127}));
    annotation(
      uses(Modelica(version = "3.2.3")));
  end platform_nsensor;

  model platform_fast
    Real NGG, N1, NPT, T5, P3, P5;
    Real NGG_data, N1_data, NPT_data, T5_data, P3_data, P5_data;
    Real Err_NGG, Err_N1, Err_NPT, Err_T5, Err_P3, Err_P5;
    Real Wf_a, Lm_a, Error, Wf_cmd, Lm_cmd, Im, flag;
    //,detUN,detUT,Wfb4lim,errN,errT;
  
  protected
    EngineTest et1 annotation(
      Placement(visible = true, transformation(origin = {53, 61}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable XiaoTaiJie(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {-86, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Controller Ctrl annotation(
      Placement(visible = true, transformation(origin = {-36, 12}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    MFSYS7.MFSYS7_export MFSYS7_export annotation(
      Placement(visible = true, transformation(origin = {26, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay NGGDelay(samplePeriod = 0.02, y_start = 700) annotation(
      Placement(visible = true, transformation(origin = {9, 89}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant T2(k = 288.15) annotation(
      Placement(visible = true, transformation(origin = {-13, 77}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant P2(k = 101.325) annotation(
      Placement(visible = true, transformation(origin = {-41, 69}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant VSV(k = 0) annotation(
      Placement(visible = true, transformation(origin = {-19, 53}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay1(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {5, -63}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay2(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {5, -47}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay4(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {5, -33}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2 annotation(
      Placement(visible = true, transformation(origin = {53, 5}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay3(samplePeriod = 0.02, y_start = 0) annotation(
      Placement(visible = true, transformation(origin = {5, -19}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable NGG_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {-76, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable N1_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {-46, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable P3_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {-16, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable T5_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {20, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable NPT_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {50, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable P5_table(table = [0, 27.3; 20, 27.3; 21, 40.7; 35, 40.7; 36, 47; 50, 47; 51, 60; 65, 60; 66, 85; 80, 85; 81, 60; 95, 60; 96, 47; 110, 47; 111, 40.7; 125, 40.7; 126, 27.5; 140, 27.5]) annotation(
      Placement(visible = true, transformation(origin = {82, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  equation
    connect(T2.y, et1.T2) annotation(
      Line(points = {{-5.3, 77}, {33.4, 77}, {33.4, 75.5}, {34, 75.5}, {34, 76}}, color = {0, 0, 127}));
    connect(P2.y, et1.P2) annotation(
      Line(points = {{-33.3, 69}, {33.7, 69}}, color = {0, 0, 127}));
    connect(VSV.y, et1.VSV) annotation(
      Line(points = {{-11.3, 53}, {33.7, 53}}, color = {0, 0, 127}));
    connect(NGGDelay.y, Ctrl.NGG) annotation(
      Line(points = {{3.5, 89}, {-64, 89}, {-64, 21}, {-54, 21}}, color = {0, 0, 127}));
    connect(et1.N1, unitDelay1.u) annotation(
      Line(points = {{72, 66.32}, {96, 66.32}, {96, -63}, {11, -63}}, color = {0, 0, 127}));
    connect(unitDelay1.y, Ctrl.N1) annotation(
      Line(points = {{-0.5, -63}, {-80, -63}, {-80, 15}, {-54, 15}}, color = {0, 0, 127}));
    connect(et1.T5, unitDelay2.u) annotation(
      Line(points = {{72, 55.68}, {90, 55.68}, {90, -47}, {11, -47}}, color = {0, 0, 127}));
    connect(unitDelay2.y, Ctrl.T5) annotation(
      Line(points = {{-0.5, -47}, {-72, -47}, {-72, 9}, {-54, 9}}, color = {0, 0, 127}));
    connect(et1.P3, unitDelay4.u) annotation(
      Line(points = {{72, 45.8}, {82, 45.8}, {82, -33}, {11, -33}}, color = {0, 0, 127}));
    connect(unitDelay4.y, Ctrl.P3) annotation(
      Line(points = {{-0.5, -33}, {-64, -33}, {-64, -2}, {-54, -2}}, color = {0, 0, 127}));
    connect(Ctrl.ImMF, MFSYS7_export.u) annotation(
      Line(points = {{-18.36, 24.96}, {-2.72, 24.96}, {-2.72, 5.92}, {17.28, 5.92}}, color = {0, 0, 127}));
    connect(MFSYS7_export.y, deMultiplex2.u) annotation(
      Line(points = {{35, 6}, {41.5, 6}, {41.5, 5}, {45, 5}}, color = {0, 0, 127}, thickness = 0.5));
    connect(deMultiplex2.y1[1], unitDelay3.u) annotation(
      Line(points = {{60.7, 9.2}, {69.7, 9.2}, {69.7, -18.8}, {10.7, -18.8}}, color = {0, 0, 127}));
    connect(unitDelay3.y, Ctrl.Lm) annotation(
      Line(points = {{-0.5, -19}, {-66, -19}, {-66, 4}, {-54, 4}}, color = {0, 0, 127}));
    connect(Ctrl.Flag, MFSYS7_export.FLAG) annotation(
      Line(points = {{-18.36, -1.32}, {17.64, -1.32}}, color = {0, 0, 127}));
    connect(Ctrl.Flag, et1.Flag) annotation(
      Line(points = {{-18.36, -1.32}, {11.64, -1.32}, {11.64, 46.68}, {33.64, 46.68}}, color = {0, 0, 127}));
    connect(deMultiplex2.y2[1], et1.Wf) annotation(
      Line(points = {{60.7, 0.8}, {66.7, 0.8}, {66.7, 38.8}, {20.7, 38.8}, {20.7, 62.8}, {34.7, 62.8}}, color = {0, 0, 127}));
    when sample(0, 0.02) then
      NGG = et1.NGG;
      N1 = et1.N1;
      Wf_a = et1.Wf;
      Lm_a = Ctrl.Lm;
      Error = et1.EngOut[1];
      Lm_cmd = Ctrl.LMcmd;
      Wf_cmd = Ctrl.Wf;
      Im = Ctrl.ImMF;
      flag = Ctrl.Flag;
      T5 = et1.T5;
      
      NPT = 1000;
      P3 = 303;
      P5 = 202;
      N1_data = N1_table.y;
      NGG_data = NGG_table.y;
      NPT_data = NPT_table.y;
      P3_data = P3_table.y*1000;
      T5_data = 273.15 + T5_table.y;
      P5_data = P5_table.y*1000;
      Err_N1 = abs(N1 - N1_data) / 7000;
      Err_NGG = abs(NGG - NGG_data) / 9600;
      Err_NPT = abs(NPT - NPT_data) / 3200;
      Err_P3 = abs(P3 - P3_data) / 1550;
      Err_T5 = abs(T5 - T5_data) / 680;
      Err_P5 = abs(P5 - P5_data) / 300;
  //    detUN = Ctrl.CtrlOut[5];
  //    detUT = Ctrl.CtrlOut[6];
  //    Wfb4lim = Ctrl.CtrlOut[7];
  //    errN = Ctrl.CtrlOut[8];
  //    errT = Ctrl.CtrlOut[9];
    end when;
    connect(XiaoTaiJie.y, Ctrl.PLA) annotation(
      Line(points = {{-75, 28}, {-54, 28}}, color = {0, 0, 127}));
    connect(et1.NGG, NGGDelay.u) annotation(
      Line(points = {{72, 76.2}, {96, 76.2}, {96, 90.2}, {16, 90.2}}, color = {0, 0, 127}));
    annotation(
      uses(Modelica(version = "3.2.3")));
  end platform_fast;
  annotation(
    uses(Modelica(version = "3.2.3")));
end platform;
