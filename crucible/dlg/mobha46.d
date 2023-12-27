///////////////////////////////////////////////////////////////////
// Dialogue for Gaohan Ralahr
// Greets Player 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA46

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6700
  IF ~~ THEN REPLY @6702 GOTO 1
  IF ~~ THEN REPLY @6703 GOTO 1
  IF ~~ THEN REPLY @6704 GOTO 1
  IF ~~ THEN REPLY @6705 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @6706
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut09")~ EXIT
END

IF ~Global("MO_LichConvo","MOBHA0",0)~ THEN BEGIN 2
  SAY @6707 = @6708
  IF ~~ THEN DO ~SetGlobal("MO_LichConvo","MOBHA0",1)~ EXIT
END

IF ~Global("MO_LichConvo","MOBHA0",1)
HPPercent(Myself,100)~ THEN BEGIN 3
  SAY @6709 
  IF ~~ THEN DO ~~ EXIT
END

IF ~HPPercentLT(Myself,100)~ THEN BEGIN 100
  SAY @6701
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END