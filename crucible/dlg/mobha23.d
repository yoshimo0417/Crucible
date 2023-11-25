///////////////////////////////////////////////////////////////////
// Dialogue for Belchaad the Juggernaut
// Lesser Deity owner of the Demon Tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA23

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5700 = @5701
  IF ~~ THEN REPLY @5702 GOTO 1
  IF ~~ THEN REPLY @5703 GOTO 2
  IF ~~ THEN REPLY @5704 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @5710 = @5711
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @5712 = @5713 = @5714
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5715
  IF ~~ THEN DO ~SetGlobal("MOBHA7_Enemy","GLOBAL",1)
Enemy()~ EXIT
END

