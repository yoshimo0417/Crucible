///////////////////////////////////////////////////////////////////
// Dialogue for Throne of Blood Transition (Ascension)
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA33

IF ~~ THEN BEGIN 0
  SAY @6100
  IF ~PartyHasItem("mobhabl1")~ THEN REPLY @6101 THEN DO ~ClearAllActions()
    SaveGame(2)
    SmallWait(5)
    StartCutSceneMode()
    StartCutScene("cut248a")~ EXIT
  IF ~~ THEN REPLY @6102 THEN DO ~DestroySelf()~ EXIT
END

