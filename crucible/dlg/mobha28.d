///////////////////////////////////////////////////////////////////
// Dialogue for Malchediel
// Solar in charge of the Planetar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA28

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6200
  IF ~~ THEN DO ~SetGlobal("MOBHA9_Enemy","GLOBAL",1)
Enemy()~ EXIT
END
