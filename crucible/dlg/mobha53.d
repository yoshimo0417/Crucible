///////////////////////////////////////////////////////////////////
// Dialogue for Mercane
// Shopkeep and Innkeeper in the Main Area
///////////////////////////////////////////////////////////////////
BEGIN MOBHA53

IF ~True()~ THEN BEGIN 0
  SAY @7100
  IF ~~ THEN REPLY @7100 DO ~StartStore("mobha53",LastTalkedToBy())~ EXIT // Yes
  IF ~~ THEN REPLY @7102 GOTO 1 // No
END

IF ~~ THEN BEGIN 1
  SAY @7103
  IF ~~ THEN DO ~~ EXIT
END
