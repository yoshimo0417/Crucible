///////////////////////////////////////////////////////////////////
// Dialogue for Culdus Aghurath
// Final Fight, Big Bad of the Mod
///////////////////////////////////////////////////////////////////
BEGIN MOBHA37

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6400 
  IF ~IsValidForPartyDialog("IMOEN2")~ THEN GOTO 1
  IF ~!IsValidForPartyDialog("IMOEN2")~ THEN GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @6401
  IF ~~ THEN EXTERN IMOEN25J MOIMOEN1
END 

IF ~~ THEN BEGIN 3
  SAY @6403
  IF ~IsValidForPartyDialog("SAREVOK")~ THEN GOTO 4
  IF ~!IsValidForPartyDialog("SAREVOK")~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @6404
  IF ~~ EXTERN SAREV25J MOSAREVOK1
END

IF ~~ THEN BEGIN 6
  SAY @6406
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @6407
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @6408 GOTO 8
  IF ~~ THEN REPLY @6409 GOTO 9
  IF ~~ THEN REPLY @6410 GOTO 9
  IF ~~ THEN REPLY @6411 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @6413
  IF ~~ THEN REPLY @6409 GOTO 9
  IF ~~ THEN REPLY @6410 GOTO 9
  IF ~~ THEN REPLY @6411 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @6414
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @6412
  IF ~Global("MO_UthaedeolAlly","GLOBAL",0)~ THEN DO ~SetGlobal("MOBHA2_Enemy","GLOBAL",1)
Enemy()~ EXIT
  IF ~Global("MO_UthaedeolAlly","GLOBAL",1)~ THEN DO ~SetGlobal("MOBHA2_Enemy","GLOBAL",1)
Enemy()
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut15")~ EXIT
END

//-------------------------------------------------------------------------
// Imoen External
APPEND IMOEN25J
  IF ~~ THEN BEGIN MOIMOEN1
    SAY @6402
    IF ~~ THEN EXTERN MOBHA37 3
  END
END

//-------------------------------------------------------------------------
// Sarevok External
APPEND SAREV25J
  IF ~~ THEN BEGIN MOSAREVOK1
    SAY @6405
    IF ~~ THEN EXTERN MOBHA37 6
  END
END