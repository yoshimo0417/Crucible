///////////////////////////////////////////////////////////////////
// Dialogue for Kirinhale
// Greets Player in the Outcast Refuge
///////////////////////////////////////////////////////////////////
BEGIN MOBHA22

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7200 = @7201
  IF ~~ THEN REPLY @7202 GOTO 1  // I set you free in Durlag's Tower.
  IF ~~ THEN REPLY @7203 GOTO 2  // We met in Durlag's Tower, and I left you to rot.
  IF ~~ THEN REPLY @7204 GOTO 3  // I killed you in Durlag's Tower.
  IF ~~ THEN REPLY @7205 GOTO 4  // No, I don't think we have.
END

IF ~~ THEN BEGIN 1
  SAY @7206 = @7207
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 2
  SAY @7208
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 3
  SAY @7209
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 4
  SAY @7210
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 5
  SAY @7211 = @7212 = @7213
  IF ~Gender(Player1,MALE)~ THEN GOTO 6
  IF ~Gender(Player1,FEMALE)~ THEN GOTO 7
END 

IF ~~ THEN BEGIN 6
  SAY @7214
  IF ~~ THEN GOTO 8
END 

IF ~~ THEN BEGIN 7
  SAY @7215
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @7216
  IF ~~ THEN DO ~~ EXIT
END