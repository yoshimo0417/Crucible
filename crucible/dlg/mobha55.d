///////////////////////////////////////////////////////////////////
// Dialogue for Noober
// Greets Player in the Throne Room
///////////////////////////////////////////////////////////////////
BEGIN MOBHA55

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7400
  IF ~~ THEN REPLY @7401 GOTO 1  // What...
  IF ~~ THEN REPLY @7402 GOTO 1  // How...
  IF ~~ THEN REPLY @7403 GOTO 1  // Who...
END

IF ~~ THEN BEGIN 1
  SAY @7404
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut21")~ EXIT
END