///////////////////////////////////////////////////////////////////
// Dialogue for Horkos
// Dying Deathbringer in Khalas
///////////////////////////////////////////////////////////////////
BEGIN MOBHA01D

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6500 = @6501
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @6511
  IF ~~ THEN DO ~DestroyItem("minhp1")
Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6510
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @6512
  IF ~Global("MO_AidDeathbringer","GLOBAL",0)~ THEN REPLY @6505 GOTO 4  // Can I aid you?
  IF ~~ THEN REPLY @6506 GOTO 5  // Who are you?
  IF ~~ THEN REPLY @6507 GOTO 6  // There are bodies everywhere, what happened here?
  IF ~~ THEN REPLY @6508 GOTO 7  // Where is Bhaal's kingdom and how do I enter it?
  IF ~~ THEN REPLY @6509 GOTO 8  // What threats do I face here?
  IF ~~ THEN REPLY @6503 GOTO 1  // Be at peace.
  IF ~~ THEN REPLY @6504 GOTO 2  // I'll end your existence!
END

IF ~~ THEN BEGIN 4
  SAY @6520 = @6521
  IF ~~ THEN DO ~SetGlobal("MO_AidDeathbringer","GLOBAL",1)~ GOTO 3
END

//-------------------------------------------------------------------------
// Who are you?
IF ~~ THEN BEGIN 5
  SAY @6530
  IF ~IsValidForPartyDialog("SAREVOK")~ THEN GOTO MOSAREVOK2
  IF ~!IsValidForPartyDialog("SAREVOK")~ THEN GOTO 52
END

IF ~~ THEN BEGIN 50
  SAY @6531
  IF ~~ THEN EXTERN SAREV25J 51
END

IF ~~ THEN BEGIN 52
  SAY @6533 = @6534 = @6535
  IF ~~ THEN GOTO 3
END

//-------------------------------------------------------------------------
// There are bodies everywhere, what happened here?
IF ~~ THEN BEGIN 6
  SAY @6540 = @6541 = @6542
  IF ~~ THEN GOTO 3
END

//-------------------------------------------------------------------------
// Where is Bhaal's kingdom and how do I enter it?
IF ~~ THEN BEGIN 7
  SAY @6550
  IF ~~ THEN GOTO 3
END

//-------------------------------------------------------------------------
// What threats do I face here?
IF ~~ THEN BEGIN 8
  SAY @6560 = @6561 = @6562 = @6563
  IF ~~ THEN GOTO 3
END

//-------------------------------------------------------------------------
// Sarevok External
APPEND SAREV25J
  IF ~~ THEN BEGIN MOSAREVOK2
    SAY @6532
    IF ~~ THEN EXTERN MOBHA01D 52
  END
END