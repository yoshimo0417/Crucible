///////////////////////////////////////////////////////////////////
// Dialogue for Cespenar
// Planetar Garrison - Level 2
///////////////////////////////////////////////////////////////////
APPEND BOTSMITH
  IF ~AreaCheck("mobha0")
Global("MO_CespChat","MOBHA0",0)~ THEN BEGIN MOBOTSMITH1
    SAY @6800
    IF ~~ THEN REPLY @6801 GOTO MOBOTSMITH2  // How come you are here?
    IF ~~ THEN REPLY @6802 GOTO MOBOTSMITH2  // I did not expect to see you again.
    IF ~~ THEN REPLY @6803 GOTO MOBOTSMITH2  // I see you are serving the enemy now.
  END

  IF ~~ THEN BEGIN MOBOTSMITH2
    SAY @6804
    IF ~~ THEN DO ~SetGlobal("MO_CespChat","MOBHA0",1)~ GOTO 2 
    END
END

