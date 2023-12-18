///////////////////////////////////////////////////////////////////
// Dialogue for Malchediel
// Solar in charge of the Planetar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA28

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6200 = @6201
  IF ~~ THEN DO ~GiveItemCreate("mobhabl2",Player1,1,0,0)
SetGlobal("MOBHA8_Enemy","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
