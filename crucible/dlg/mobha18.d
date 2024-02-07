///////////////////////////////////////////////////////////////////
// Dialogue for Deathstalker (Initial Conversation)
// She greets the player
///////////////////////////////////////////////////////////////////
BEGIN MOBHA18

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5100
  IF ~!CheckStatGT(Player1,50,LORE)
!CheckStatGT(Player1,16,INT)
!CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",0)~ THEN REPLY @5101 GOTO 1 
  IF ~OR(4)
CheckStatGT(Player1,50,LORE)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",1)~ THEN REPLY @5102 GOTO 2
  IF ~~ THEN REPLY @5103 GOTO 4
  IF ~~ THEN REPLY @5104 GOTO 6
  IF ~~ THEN REPLY @5105 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @5110
  IF ~~ THEN REPLY @5112 GOTO 3 
  IF ~~ THEN REPLY @5103 GOTO 4
  IF ~~ THEN REPLY @5115 GOTO 6
  IF ~~ THEN REPLY @5116 GOTO 6
END

IF ~~ THEN BEGIN 2
  SAY @5111
  IF ~~ THEN REPLY @5112 GOTO 3 
  IF ~~ THEN REPLY @5103 GOTO 4
  IF ~~ THEN REPLY @5115 GOTO 6
  IF ~~ THEN REPLY @5116 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @5113 = @5114
  IF ~~ THEN REPLY @5103 GOTO 4
  IF ~~ THEN REPLY @5115 GOTO 6
  IF ~~ THEN REPLY @5116 GOTO 6
END

IF ~~ THEN BEGIN 4
  SAY @5120
  IF ~~ THEN REPLY @5121 GOTO 5
  IF ~!CheckStatGT(Player1,50,LORE)
!CheckStatGT(Player1,16,INT)
!CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",0)~ THEN REPLY @5101 GOTO 1 
  IF ~OR(4)
CheckStatGT(Player1,50,LORE)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",1)~ THEN REPLY @5102 GOTO 2
  IF ~~ THEN REPLY @5115 GOTO 6
  IF ~~ THEN REPLY @5116 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @5122
  IF ~!CheckStatGT(Player1,50,LORE)
!CheckStatGT(Player1,16,INT)
!CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",0)~ THEN REPLY @5101 GOTO 1 
  IF ~OR(4)
CheckStatGT(Player1,50,LORE)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)
Global("MO_IdentifyKhalas","GLOBAL",1)~ THEN REPLY @5102 GOTO 2
  IF ~~ THEN REPLY @5115 GOTO 6
  IF ~~ THEN REPLY @5116 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @5130
  IF ~DifficultyLT(HARDEST)~ THEN DO ~SetGlobal("MOBHA1_Enemy","GLOBAL",1)
ForceSpell(Myself,DRYAD_TELEPORT)
AddJournalEntry(@20003,INFO)~ EXIT
  IF ~DifficultyGT(HARD)~ THEN DO ~SetGlobal("MOBHA1_Enemy","GLOBAL",1)
CreateCreatureEffect("mobha06","SPDIMNDR",[2520.1491],SSW)  // Skirmisher
CreateCreatureEffect("mobha06","SPDIMNDR",[2571.1506],SSW)  // Skirmisher
SmallWait(10)
ForceSpell(Myself,DRYAD_TELEPORT)
AddJournalEntry(@20003,INFO)~ EXIT
END

