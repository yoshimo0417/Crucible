///////////////////////////////////////////////////////////////////
// Dialogue for Statue
// Guides Player on the next steps
///////////////////////////////////////////////////////////////////
BEGIN MOBHA19

IF ~~ THEN BEGIN 0
  SAY @5500 = @5501
  IF ~~ THEN REPLY @5502 GOTO 1
  IF ~~ THEN REPLY @5503 GOTO 2
  IF ~~ THEN REPLY @5504 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5510 = @5511 = @5512 = @5513 
  IF ~~ THEN REPLY @5503 GOTO 2
  IF ~~ THEN REPLY @5504 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5520 = @5521 = @5522 
  IF ~~ THEN REPLY @5502 GOTO 1
  IF ~~ THEN REPLY @5504 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5530
  IF ~~ THEN DO ~~ EXIT
END