///////////////////////////////////////////////////////////////////
// Dialogue for Uthaedeol the Blood-drenched
// Summoned forth in Planar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA44

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6600
  IF ~~ THEN EXTERN MOBHA28A MOMALCHEDIEL1
END

IF ~~ THEN BEGIN 1
  SAY @6602 = @6603
  IF ~~ THEN EXTERN MOBHA28A MOMALCHEDIEL2
END

IF ~Global("MO_UthaedeolChat","MOBHA8",1)~ THEN BEGIN 2
  SAY @6606
  IF ~~ THEN DO ~SetGlobal("MO_UthaedeolChat","MOBHA8",2)~ EXIT
END

//-------------------------------------------------------------------------
// Malchediel External
APPEND MOBHA28A
  IF ~~ THEN BEGIN MOMALCHEDIEL1
    SAY @6601
    IF ~~ THEN EXTERN MOBHA44 1
  END

  IF ~~ THEN BEGIN MOMALCHEDIEL2
    SAY @6604 = @6605
    IF ~~ THEN DO ~ClearAllActions()
SetGlobal("MO_UthaedeolChat","MOBHA8",1)
SmallWait(5)
StartCutSceneMode()
StartCutScene("mocut08")~ EXIT
  END
END