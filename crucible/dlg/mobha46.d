///////////////////////////////////////////////////////////////////
// Dialogue for Gaohan Ralahr
// Greets Player 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA46

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6700
  IF ~~ THEN DO ~~ EXIT
END

IF ~HPPercentLT(Myself,100)~ THEN BEGIN 100
  SAY @6701
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END