///////////////////////////////////////////////////////////////////
// Dialogue for Osmadiel
// Greets player in Planar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA45

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5301
  IF ~DifficultyGT(HARD)~ THEN DO ~Enemy()
CreateCreatureEffect("mobha12","SPSPEV",[589.1062],SE)
CreateCreatureEffect("mobha12","SPSPEV",[687.972],SE)
CreateCreatureEffect("mobha12","SPSPEV",[559.981],SE)
CreateCreatureEffect("mobha12","SPSPEV",[474.1055],SE)
CreateCreatureEffect("mobha12","SPSPEV",[658.920],SE)~ EXIT
  IF ~DifficultyLT(HARDEST)~ THEN DO ~Enemy()
CreateCreatureEffect("mobha14","SPSPEV",[589.1062],SE)
CreateCreatureEffect("mobha12","SPSPEV",[687.972],SE)
CreateCreatureEffect("mobha14","SPSPEV",[559.981],SE)
CreateCreatureEffect("mobha12","SPSPEV",[474.1055],SE)
CreateCreatureEffect("mobha14","SPSPEV",[658.920],SE)~ EXIT 
END

