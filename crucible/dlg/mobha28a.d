///////////////////////////////////////////////////////////////////
// Dialogue for Malchediel (Entrance)
// Solar in charge of the Planetar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA28A

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6210
  IF ~~ THEN REPLY @6211 GOTO 1  // I have no choice but to press forward.
  IF ~~ THEN REPLY @6212 GOTO 1  // I am not a gambler and care little for odds.
  IF ~~ THEN REPLY @6213 GOTO 1  // Nothing will stop me from my destiny.
  IF ~~ THEN REPLY @6214 GOTO 1  // I shall crush any who stand in my way.
END

IF ~~ THEN BEGIN 1
  SAY @6215 = @6216 = @6217 = @6218
  IF ~~ THEN DO ~ClearAllActions()
SmallWait(5)
StartCutSceneMode()
StartCutScene("mocut07")~ EXIT
END