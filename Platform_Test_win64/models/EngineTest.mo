model EngineTest
  impure function fcninit

    external "C" init() annotation(
      Library = "EngineDLL",
      Include = "#include \"loaddll.h\"");
  end fcninit;

  impure function fcnstep
    input Real Input[5];
    output Real Output[8];
  
    external "C" step(Input, Output) annotation(
      Library = "EngineDLL",
      Include = "#include \"loaddll.h\"");
  end fcnstep;

  Modelica.Blocks.Interfaces.RealInput T2 annotation(
    Placement(visible = true, transformation(origin = {-100, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput P2 annotation(
    Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Wf annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput VSV annotation(
    Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Flag annotation(
    Placement(visible = true, transformation(origin = {-100, -80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -82}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput NGG annotation(
    Placement(visible = true, transformation(origin = {98, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {98, 78}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput N1 annotation(
    Placement(visible = true, transformation(origin = {98, 40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {98, 40}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput T5 annotation(
    Placement(visible = true, transformation(origin = {98, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {99, 1}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput P3 annotation(
    Placement(visible = true, transformation(origin = {98, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {98, -38}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  Real EngIn[5] = {T2, P2, Wf, VSV, Flag};
  //  Real EngIn[5] = {288.15, 101.325, 0.5, 0, 1};
  Real EngOut[8];
  Modelica.Blocks.Interfaces.RealOutput P5 annotation(
    Placement(visible = true, transformation(origin = {98, -78}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {99, -77}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
initial algorithm
  fcninit();
  N1 := 0;
  T5 := 0;
  P3 := 0;
  NGG := 0;
  for i in 1:8 loop
    EngOut[i] := 0;
  end for;
algorithm
  when sample(0, 0.02) then
    EngOut := fcnstep(EngIn);
    NGG := EngOut[5];
    N1 := EngOut[6];
    T5 := EngOut[4];
    P3 := EngOut[2];
    P5 := EngOut[3];
  end when;
//[ Error P3 P5 T5 NGG N1 NPT Pwr ]
  annotation(
    uses(Modelica(version = "3.2.3")));
end EngineTest;
