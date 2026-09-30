PROGRAM main
  VAR
    CTU0 : CTU;
    CTU1 : CTU;
    CTU_DINT0 : CTU_DINT;
    CTUD0 : CTUD;
    CTU2 : CTU;
    CTU3 : CTU;
  END_VAR
  VAR
    button AT %QX0.0 : BOOL;
    Motor AT %QX0.1 : BOOL;
    Package_detected AT %QX0.2 : BOOL;
    reset AT %QX0.3 : BOOL;
    total_count AT %MW1 : INT;
    Big_Box AT %MW2 : INT;
    Medium_Box AT %MW3 : INT;
    small_box AT %MW4 : INT;
    is_small AT %MX0.0 : BOOL;
    is_BIG AT %MX0.1 : BOOL;
    weight AT %MW0 : INT;
  END_VAR
  VAR
    _TMP_GT3750014_ENO : BOOL;
    _TMP_GT3750014_OUT : BOOL;
    _TMP_LT6484925_ENO : BOOL;
    _TMP_LT6484925_OUT : BOOL;
    _TMP_ADD10200973_ENO : BOOL;
    _TMP_ADD10200973_OUT : INT;
  END_VAR

  Motor := button;
  _TMP_GT3750014_OUT := GT(EN := Package_detected, IN1 := weight, IN2 := 10, ENO => _TMP_GT3750014_ENO);
  IF _TMP_GT3750014_ENO THEN
      is_BIG := _TMP_GT3750014_OUT;
  END_IF;
  _TMP_LT6484925_OUT := LT(EN := Package_detected, IN1 := weight, IN2 := 5, ENO => _TMP_LT6484925_ENO);
  IF _TMP_LT6484925_ENO THEN
      is_small := _TMP_LT6484925_OUT;
  END_IF;
  CTU0(EN := TRUE, CU := Package_detected AND is_BIG, R := reset, PV := 100);
  IF CTU0.ENO THEN
      Big_Box := CTU0.CV;
  END_IF;
  CTU2(EN := TRUE, CU := Package_detected AND is_small, R := reset, PV := 100);
  IF CTU2.ENO THEN
      small_box := CTU2.CV;
  END_IF;
  CTU3(EN := TRUE, CU := Package_detected AND NOT(is_BIG) AND NOT(is_small), R := reset, PV := 100);
  IF CTU3.ENO THEN
      Medium_Box := CTU3.CV;
  END_IF;
  _TMP_ADD10200973_OUT := ADD(EN := TRUE, IN1 := small_box, IN2 := Medium_Box, IN3 := Big_Box, ENO => _TMP_ADD10200973_ENO);
  IF _TMP_ADD10200973_ENO THEN
      total_count := _TMP_ADD10200973_OUT;
  END_IF;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 1);
    PROGRAM instance0 WITH task0 : main;
  END_RESOURCE
END_CONFIGURATION
