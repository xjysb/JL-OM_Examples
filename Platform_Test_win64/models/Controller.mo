model Controller
  impure function Ctrlinit

    external "C" Ctrlinit() annotation(
      Library = "Controller",
      Include = "#include \"loadctrldll.h\"");
  end Ctrlinit;

  impure function Ctrlstep
    input Real Input[6];
    output Real Output[9];
  
    external "C" Ctrlstep(Input, Output) annotation(
      Library = "Controller",
      Include = "#include \"loadctrldll.h\"");
  end Ctrlstep;

  Modelica.Blocks.Interfaces.RealInput PLA annotation(
    Placement(visible = true, transformation(origin = {-100, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput NGG annotation(
    Placement(visible = true, transformation(origin = {-100, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput N1 annotation(
    Placement(visible = true, transformation(origin = {-100, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput T5 annotation(
    Placement(visible = true, transformation(origin = {-100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Lm annotation(
    Placement(visible = true, transformation(origin = {-100, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-101, -47}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput P3 annotation(
    Placement(visible = true, transformation(origin = {-100, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ImMF annotation(
    Placement(visible = true, transformation(origin = {98, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Wf annotation(
    Placement(visible = true, transformation(origin = {98, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Flag annotation(
    Placement(visible = true, transformation(origin = {98, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {98, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput LMcmd annotation(
    Placement(visible = true, transformation(origin = {98, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
//  Real CtrlIn[6] = { 40.7, 6500, 4410, 382, 11.5, 294 };
  Real CtrlIn[6] = {PLA, NGG, N1, T5, Lm, P3};
  //[PLA  NGG N1 T5 Lm P3]
  Real CtrlOut[9];
  //[ImMF Wf]
  
initial algorithm
  Ctrlinit();
  for i in 1:9 loop
    CtrlOut[i] := 0;
  end for;   
  ImMF := 0;
  Wf := 0;
  Flag := 0;
  LMcmd := 0;
algorithm
  when sample(0, 0.02) then
    CtrlOut := Ctrlstep(CtrlIn);
    ImMF := -(CtrlOut[1] - 6) / 1000;
    Wf := CtrlOut[2];
    LMcmd := CtrlOut[3];
    Flag := CtrlOut[4];
//    detUN := CtrlOut[5];
//    detUT := CtrlOut[6];
//    Wfb4lim := CtrlOut[7];
//    errN := CtrlOut[8];
//    errT := CtrlOut[9];
  end when;
// The MFSYS7 accept minus ImMF
//    ImMF := CtrlOut[1];
//ImMF = (CtrlOut[1]-6)/1000;  //Balance Current is 0mA and change the unit to A
equation

  annotation(
    uses(Modelica(version = "3.2.3")));
end Controller;
