///////////////////////////////////////////////////////////////////
// Dialogue for Right Blood Bowl
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA31

IF ~Global("Bloodbowl_right","MOBHA1",0)~ THEN BEGIN 0
  SAY @5900
  IF ~PartyHasItem("mobhab1")~ THEN REPLY @5901 GOTO 1
  IF ~~ THEN REPLY @5902 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @5903
  IF ~~ THEN DO ~TakePartyItem("mobhab1")
SetGlobal("Bloodbowl_right","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5904
  IF ~~ THEN DO ~~ EXIT
END
