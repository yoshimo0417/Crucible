///////////////////////////////////////////////////////////////////
// Dialogue for Jambi
// Shopkeep and Innkeeper in the Main Area
///////////////////////////////////////////////////////////////////
BEGIN MOBHA53

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7110 = @7111
  IF ~~ THEN REPLY @7112 GOTO 4  // What is this place?
  IF ~~ THEN REPLY @7113 GOTO 3  // Who are you?
  IF ~~ THEN REPLY @7114 GOTO 4  // Why is your sanctuary out here?
  IF ~~ THEN REPLY @7115 GOTO 1  // I have no desire to speak with you.
END


IF ~~ THEN BEGIN 1
  SAY @7116
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7103
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @7117 = @7118
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 4
  SAY @7120
  IF ~~ THEN GOTO 5
END 

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @7119
  IF ~~ THEN REPLY @7121 DO ~StartStore("mobha53",LastTalkedToBy())~ EXIT // I need a safe place to lay my head.
  IF ~~ THEN REPLY @7122 DO ~StartStore("mobha53",LastTalkedToBy())~ EXIT // Let me see your store.
  IF ~~ THEN REPLY @7112 GOTO 4  // What is this place?
  IF ~~ THEN REPLY @7113 GOTO 3  // Who are you?
  IF ~~ THEN REPLY @7114 GOTO 4  // Why is your sanctuary out here?
  IF ~~ THEN REPLY @7123 GOTO 2  // I'm good for now.
END
