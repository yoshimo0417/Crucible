///////////////////////////////////////////////////////////////////
// Dialogue for Marilith (Demon Tower - 1st Floor)
// First big bad in the tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA20

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5600 = @5601
  IF ~~ THEN DO ~SetGlobal("MOBHA5_Enemy","GLOBAL",1)
Enemy()~ EXIT
END

