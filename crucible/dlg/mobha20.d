///////////////////////////////////////////////////////////////////
// Dialogue for Sapphira (Demon Tower - 1st Floor)
// First big bad in the tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA20

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5600 = @5601 = @5602 
  IF ~~ THEN REPLY @5603 GOTO 1
  IF ~~ THEN REPLY @5604 GOTO 2
  IF ~~ THEN REPLY @5605 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @5610
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @5611
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @5612
  IF ~OR(3)
CheckStatGT(Player1,50,LORE)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)~ THEN REPLY @5613 GOTO 4
  IF ~~ THEN REPLY @5614 GOTO 5
  IF ~~ THEN REPLY @5605 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @5620
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @5621 = @5622
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5623 = @5624 = @5625 = @5626
  IF ~~ THEN REPLY @5627 GOTO 7
  IF ~~ THEN REPLY @5628 GOTO 7
  IF ~~ THEN REPLY @5605 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @5630
  IF ~~ THEN DO ~SetGlobal("MOBHA5_Enemy","GLOBAL",1)
Enemy()~ EXIT
END


