///////////////////////////////////////////////////////////////////
// Dialogue for Osmadiel
// Greets player in Planar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA45

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5301
  IF ~~ THEN DO ~Enemy()
CreateCreatureEffect("mobha12","SPSPEV",[589.1062],ESE)
CreateCreatureEffect("mobha12","SPSPEV",[687.972],ESE)
CreateCreatureEffect("mobha12","SPSPEV",[559.981],ESE)
CreateCreatureEffect("mobha12","SPSPEV",[474.1055],ESE)
CreateCreatureEffect("mobha12","SPSPEV",[658.920],ESE)~ EXIT
END

