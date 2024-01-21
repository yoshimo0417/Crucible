///////////////////////////////////////////////////////////////////
// Dialogue for El Presidente
// Greets Player in the Throne Room
///////////////////////////////////////////////////////////////////
BEGIN MOBHA56

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7405 = @7406
  IF ~~ THEN REPLY @7407 GOTO 1  // How could you not help me?
  IF ~~ THEN REPLY @7408 GOTO 1  // Why did you not make your presence known?
END

IF ~~ THEN BEGIN 1
  SAY @7409 = @7410 = @7411
  IF ~~ THEN REPLY @7412 GOTO 2  // Why are you revealing yourself to me now?
END

IF ~~ THEN BEGIN 2
  SAY @7413
  IF ~~ THEN REPLY 7414 GOTO 4 // Any advice on the way ahead?
  IF ~~ THEN REPLY 7415 GOTO 4 // My life is not a plaything for greater beings.
  IF ~~ THEN REPLY 7416 GOTO 3 // I don't want this. Remove my divine blood and make me a mortal, so I can walk away from this.
  IF ~~ THEN REPLY 7417 GOTO 3 // You have the power, make me a god here and now. Crush Amelyssan!
END

IF ~~ THEN BEGIN 3
  SAY @7418
  IF ~~ THEN GOTO 4
END 

IF ~~ THEN BEGIN 4
  SAY @7419 = @7420 = @7421
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
