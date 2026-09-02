PROGRAM main
  VAR
    CTU0 : CTU;
  END_VAR
  VAR
    Button AT %QX0.0 : BOOL;
    Motor AT %QX0.1 : BOOL;
    Package_sense AT %QX0.2 : BOOL;
    reset_counter AT %QX0.3 : BOOL;
    total_count AT %MW1 : INT;
  END_VAR

  Motor := Button;
  CTU0(CU := Package_sense AND Button, R := reset_counter, PV := 100);
  total_count := CTU0.CV;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 1);
    PROGRAM instance0 WITH task0 : main;
  END_RESOURCE
END_CONFIGURATION
