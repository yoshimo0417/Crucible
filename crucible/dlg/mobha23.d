///////////////////////////////////////////////////////////////////
// Dialogue for Belchaad the Juggernaut
// Lesser Deity owner of the Demon Tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA23

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5700
  IF ~~ THEN REPLY @5701 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @5702
  IF ~~ THEN DO ~SetGlobal("MOBHA7_Enemy","GLOBAL",1)
Enemy()~ EXIT
END

