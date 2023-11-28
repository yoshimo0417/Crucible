///////////////////////////////////////////////////////////////////
// Dialogue for Throne of Blood Transition (Non-Ascension)
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA33

IF ~~ THEN BEGIN 0
  SAY @6100
  IF ~~ THEN REPLY @6101 GOTO 1
  IF ~~ THEN REPLY @6102 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @6103
  IF ~~ THEN DO ~ClearAllActions()
    SaveGame(2)
    SmallWait(5)
    StartCutSceneMode()
    StartCutScene("cut248a")~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6104
  IF ~~ THEN DO ~DestroySelf()~ EXIT
END