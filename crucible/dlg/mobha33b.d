///////////////////////////////////////////////////////////////////
// Dialogue for Throne of Blood Transition (Non-Ascension)
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA33

IF ~True()~ THEN BEGIN 0
  SAY @6100
  IF ~~ THEN REPLY @6101 DO ~ClearAllActions()
    SaveGame(2)
    SmallWait(5)
    StartCutSceneMode()
    StartCutScene("cut248a")~ EXIT
  IF ~~ THEN REPLY @6102 DO ~DestroySelf()~ EXIT
END
