model MFSYS7_test
  
  import SI = Modelica.SIunits;
  parameter SI.Time pulse_time = 0.3;
  parameter SI.Frequency sin_freq = 1;
  parameter SI.Current sin_amp = 0.003;
  CL4CSM.Hydro_Mech_Library.Examples.MFSYS7.MFSYS7_export exportfmu annotation(
    Placement(visible = true, transformation(origin = {10, -8}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));

equation

  if time < pulse_time then
    exportfmu.u = -0.03;
  elseif time < 1 then
    exportfmu.u = 0;
  else 
    exportfmu.u = sin_amp*Modelica.Math.sin(6.28*sin_freq*time);
  end if;

end MFSYS7_test;