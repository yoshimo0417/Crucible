///////////////////////////////////////////////////////////////////
// Dialogue for Left Blood Bowl
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA30

IF ~Global("Bloodbowl_left","MOBHA1",0)~ THEN BEGIN 0
  SAY @5800
  IF ~PartyHasItem("mobhab2")~ THEN REPLY @5801 GOTO 1
  IF ~~ THEN REPLY @5802 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @5803
  IF ~~ THEN DO ~TakePartyItem("mobhab2")
SetGlobal("Bloodbowl_left","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @5804
  IF ~~ THEN DO ~~ EXIT
END
