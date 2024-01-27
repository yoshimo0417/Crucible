///////////////////////////////////////////////////////////////////
// Dialogue for Jambi
// Shopkeep and Innkeeper in the Main Area
///////////////////////////////////////////////////////////////////
BEGIN MOBHA53

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7300 = @7301 = @7313
  IF ~~ THEN REPLY @7302 DO ~GiveItemCreate("mobha53a",Player1,1,0,0)~ GOTO 3  // Who are you?
  IF ~~ THEN REPLY @7304 DO ~GiveItemCreate("mobha53a",Player1,1,0,0)~ GOTO 1  // I have no desire to speak with you.
END

IF ~~ THEN BEGIN 1
  SAY @7314
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7306
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7308
  IF ~~ THEN GOTO 5
END 

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @7309
  IF ~~ THEN REPLY @7311 GOTO 6  // Let me see your store.
  IF ~~ THEN REPLY @7303 GOTO 7  // What is this place?
  IF ~~ THEN REPLY @7302 GOTO 3  // Who are you?
  IF ~~ THEN REPLY @7312 GOTO 2  // I'm good for now.
END

IF ~~ THEN BEGIN 6
  SAY @7310
  IF ~~ THEN DO ~StartStore("mobha53",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @7307
  IF ~~ THEN DO ~SetGlobal("MO_IdentifyKhalas","GLOBAL",1)~ GOTO 5
END