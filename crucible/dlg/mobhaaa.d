///////////////////////////////////////////////////////////////////
// Dialogue for Jelawur Golem
// Greets Player at the beginning
///////////////////////////////////////////////////////////////////
BEGIN MOBHAAA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7500 = @7501 = @7502
  IF ~~ THEN DO ~~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @7501 = @7502
  IF ~~ THEN DO ~~ EXIT
END