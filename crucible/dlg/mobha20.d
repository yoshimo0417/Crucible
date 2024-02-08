///////////////////////////////////////////////////////////////////
// Dialogue for Sapphira (Demon Tower - 1st Floor)
// First big bad in the tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA20

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5600 = @5601 = @5602 
  IF ~~ THEN REPLY @5603 GOTO 1  // I felt something else when I entered this place. What else besides Bhaal would exist?
  IF ~~ THEN REPLY @5604 GOTO 2  // Bhaal's essence, of course.
  IF ~~ THEN REPLY @5605 GOTO 7  // Enough chatter, demon. Time to die.
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
CheckStatGT(Player1,16,WIS)~ THEN REPLY @5613 GOTO 4  // Bhaal, along with Bane and Myrkul were known as the Dark Three. Together, they assaulted the Castle of Bone and confronted the god Jergal who willingly stepped aside. Bane became the god of hatred, strife, and tyranny, Myrkul took reign over the dead, and Bhaal became the Lord of Murder.
  IF ~~ THEN REPLY @5614 GOTO 5  // Didn't he take it from Jergal?
  IF ~~ THEN REPLY @5605 GOTO 7  // Enough chatter, demon. Time to die.
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
  IF ~~ THEN REPLY @5627 DO ~AddJournalEntry(@20006,INFO)~ GOTO 7  // His essence will remain mine.
  IF ~~ THEN REPLY @5628 DO ~AddJournalEntry(@20006,INFO)~ GOTO 7  // A weakened god does not scare me.
  IF ~~ THEN REPLY @5605 DO ~AddJournalEntry(@20006,INFO)~ GOTO 7  // Enough chatter, demon. Time to die.
END

IF ~~ THEN BEGIN 7
  SAY @5630
  IF ~DifficultyLT(HARDEST)~ THEN DO ~SetGlobal("MOBHA5_Enemy","GLOBAL",1)
Enemy()~ EXIT
IF ~DifficultyGT(HARD)~ THEN DO ~SetGlobal("MOBHA5_Enemy","GLOBAL",1)
CreateCreatureEffect("mobha15","SPMETSWA",[696.438],SW)  // Demon Knight
CreateCreatureEffect("mobha15","SPMETSWA",[1101.422],W)  // Demon Knight
CreateCreatureEffect("mobha15","SPMETSWA",[1214.683],N)  // Demon Knight
CreateCreatureEffect("mobha16","SPMETSWA",[1230.784],N)  // Lilitu
CreateCreatureEffect("mobha16","SPMETSWA",[1184.747],N)  // Lilitu
CreateCreatureEffect("mobha16","SPMETSWA",[443.680],SE)  // Lilitu
CreateCreatureEffect("mobha16","SPMETSWA",[823.435],W)   // Lilitu
CreateCreatureEffect("mobha21","SPMETSWA",[527.667],SE)  // Succubus
CreateCreatureEffect("mobha21","SPMETSWA",[1001.441],W)  // Succubus
CreateCreatureEffect("mobha09","SPMETSWA",[1332.757],NW) // Balor
Enemy()~ EXIT
END


