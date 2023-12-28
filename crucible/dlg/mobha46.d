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
  IF ~DifficultyLT(HARDEST)~ THEN GOTO 4
  IF ~DifficultyGT(HARD)~ THEN GOTO 5
END

IF ~Global("MO_LichConvo1","MOBHA0",0)
HPPercent(Myself,100)~ THEN BEGIN 2
  SAY @6707 = @6708
  IF ~DifficultyLT(HARDEST)~ THEN GOTO 6
  IF ~DifficultyGT(HARD)~ THEN GOTO 7
END

IF ~Global("MO_LichConvo2","MOBHA0",1)
HPPercent(Myself,100)~ THEN BEGIN 3
  SAY @6709 
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6710
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut09a")~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6710
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut09b")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @6711
  IF ~~ THEN DO ~SetGlobal("MO_LichConvo1","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut11a")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @6711
  IF ~~ THEN DO ~SetGlobal("MO_LichConvo1","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut11b")~ EXIT
END

IF ~Global("MO_LichConvo2","MOBHA0",0)
Global("MO_LichConvo1","MOBHA0",1)
HPPercent(Myself,100)~ THEN BEGIN 8
  SAY @6709
  IF ~~ THEN DO ~SetGlobal("MO_LichConvo2","MOBHA0",1)~ EXIT
END

IF ~HPPercentLT(Myself,100)~ THEN BEGIN 100
  SAY @6701
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END