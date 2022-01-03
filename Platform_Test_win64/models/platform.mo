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
    Real NGG, N1, Wf_a, Lm_a, Error, Wf_cmd, Lm_cmd, Im, flag, T5, P3, P5;
    Real NGG_r, N1_r, EGT_r, P3_r, P5_r;
    Real detNGG, detN1, detEGT, detP3, detP5;
  protected
    EngineTest et1 annotation(
      Placement(visible = true, transformation(origin = {51, 65}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable CMD_INPUT(table = [0, 7000; 20, 7000; 21, 9000; 40, 9000]) annotation(
      Placement(visible = true, transformation(origin = {-88, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Controller Ctrl annotation(
      Placement(visible = true, transformation(origin = {-38, 16}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
    MFSYS7.MFSYS7_export MFSYS7_export annotation(
      Placement(visible = true, transformation(origin = {24, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay NGGDelay(samplePeriod = 0.02, y_start = 700) annotation(
      Placement(visible = true, transformation(origin = {7, 93}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant P2(k = 101.325) annotation(
      Placement(visible = true, transformation(origin = {-19, 73}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Sources.Constant VSV(k = 0) annotation(
      Placement(visible = true, transformation(origin = {-19, 49}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay1(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -67}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay2(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -49}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay4(samplePeriod = 0.02, y_start = 300) annotation(
      Placement(visible = true, transformation(origin = {3, -33}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2 annotation(
      Placement(visible = true, transformation(origin = {51, 9}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
    Modelica.Blocks.Discrete.UnitDelay unitDelay3(samplePeriod = 0.02, y_start = 0) annotation(
      Placement(visible = true, transformation(origin = {3, -15}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
    Modelica.Blocks.Sources.TimeTable T2_INPUT(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {-88, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable NGG_DATA(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {-86, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable N1_DATA(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {-58, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable EGT_DATA(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {-28, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable P3_DATA(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {2, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Sources.TimeTable P5_DATA(table = [0, 300; 20, 300; 21, 300; 40, 300]) annotation(
      Placement(visible = true, transformation(origin = {32, -88}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
  connect(P2.y, et1.P2) annotation(
      Line(points = {{-11.3, 73}, {31.7, 73}}, color = {0, 0, 127}));
  connect(VSV.y, et1.VSV) annotation(
      Line(points = {{-11.3, 49}, {11.2, 49}, {11.2, 57}, {31.7, 57}}, color = {0, 0, 127}));
  connect(NGGDelay.y, Ctrl.NGG) annotation(
      Line(points = {{1.5, 93}, {-66, 93}, {-66, 25}, {-56, 25}}, color = {0, 0, 127}));
  connect(unitDelay1.y, Ctrl.N1) annotation(
      Line(points = {{-2.5, -67}, {-82, -67}, {-82, 19}, {-56, 19}}, color = {0, 0, 127}));
  connect(unitDelay2.y, Ctrl.T5) annotation(
      Line(points = {{-2.5, -49}, {-74, -49}, {-74, 13}, {-56, 13}}, color = {0, 0, 127}));
  connect(unitDelay4.y, Ctrl.P3) annotation(
      Line(points = {{-2.5, -33}, {-66, -33}, {-66, 2}, {-56, 2}}, color = {0, 0, 127}));
  connect(Ctrl.ImMF, MFSYS7_export.u) annotation(
      Line(points = {{-20.36, 28.96}, {-4.72, 28.96}, {-4.72, 9.92}, {15.28, 9.92}}, color = {0, 0, 127}));
  connect(MFSYS7_export.y, deMultiplex2.u) annotation(
      Line(points = {{33, 10}, {39.5, 10}, {39.5, 9}, {43, 9}}, color = {0, 0, 127}, thickness = 0.5));
  connect(deMultiplex2.y1[1], unitDelay3.u) annotation(
      Line(points = {{58.7, 13.2}, {67.7, 13.2}, {67.7, -14.8}, {8.7, -14.8}}, color = {0, 0, 127}));
  connect(unitDelay3.y, Ctrl.Lm) annotation(
      Line(points = {{-2.5, -15}, {-68, -15}, {-68, 8}, {-56, 8}}, color = {0, 0, 127}));
  connect(Ctrl.Flag, MFSYS7_export.FLAG) annotation(
      Line(points = {{-20.36, 2.68}, {15.64, 2.68}}, color = {0, 0, 127}));
  connect(Ctrl.Flag, et1.Flag) annotation(
      Line(points = {{-20.36, 2.68}, {9.64, 2.68}, {9.64, 50.68}, {31.64, 50.68}}, color = {0, 0, 127}));
  connect(deMultiplex2.y2[1], et1.Wf) annotation(
      Line(points = {{58.7, 4.8}, {64.7, 4.8}, {64.7, 42.8}, {18.7, 42.8}, {18.7, 66.8}, {32.7, 66.8}}, color = {0, 0, 127}));
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
      P3 = et1.P3;
      P5 = et1.P5;
      
      NGG_r = NGG_DATA.y;
      N1_r = N1_DATA.y;
      EGT_r = EGT_DATA.y;
      P3_r = P3_DATA.y;
      P5_r = P5_DATA.y;
      detNGG = (NGG - NGG_r) / 9000 * 100;
      detN1 = (N1 - N1_r) / 7000 * 100;
      detEGT = (T5 - EGT_r) / 950 * 100;
      detP3 = (P3 - P3_r) / 1540 * 100;
      detP5 = (P5 - P5_r) / 300 * 100;
    end when;
  connect(CMD_INPUT.y, Ctrl.PLA) annotation(
      Line(points = {{-77, 32}, {-56, 32}}, color = {0, 0, 127}));
  connect(T2_INPUT.y, et1.T2) annotation(
      Line(points = {{-77, 78}, {31, 78}, {31, 80}}, color = {0, 0, 127}));
  connect(et1.NGG, NGGDelay.u) annotation(
      Line(points = {{70, 80}, {92, 80}, {92, 94}, {14, 94}}, color = {0, 0, 127}));
  connect(et1.N1, unitDelay1.u) annotation(
      Line(points = {{70, 72}, {94, 72}, {94, -66}, {10, -66}}, color = {0, 0, 127}));
  connect(et1.T5, unitDelay2.u) annotation(
      Line(points = {{70, 66}, {88, 66}, {88, -48}, {10, -48}}, color = {0, 0, 127}));
  connect(et1.P3, unitDelay4.u) annotation(
      Line(points = {{70, 58}, {82, 58}, {82, -32}, {10, -32}}, color = {0, 0, 127}));
    annotation(
      uses(Modelica(version = "3.2.3")));
  end platform_fast;
  annotation(
    uses(Modelica(version = "3.2.3")));
end platform;
