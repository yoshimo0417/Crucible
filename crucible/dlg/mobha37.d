///////////////////////////////////////////////////////////////////
// Dialogue for Culdus Aghurath
// Final Fight, Big Bad of the Mod
///////////////////////////////////////////////////////////////////
BEGIN MOBHA37

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6400
  IF ~~ THEN DO ~SetGlobal("MOBHA2_Enemy","GLOBAL",1)
Enemy()~ EXIT
END

