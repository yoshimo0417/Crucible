///////////////////////////////////////////////////////////////////
// Dialogue for Deathstalker (Second Conversation)
// She greets the player
///////////////////////////////////////////////////////////////////
BEGIN MOBHA17

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5200
  IF ~~ THEN REPLY @5201 GOTO 1
  IF ~~ THEN REPLY @5202 GOTO 1
  IF ~~ THEN REPLY @5203 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5210
  IF ~~ THEN DO ~Enemy()~ EXIT
END

