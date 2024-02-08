///////////////////////////////////////////////////////////////////
// Dialogue for Belchaad the Juggernaut
// Lesser Deity owner of the Demon Tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA23

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @5700 = @5701
  IF ~~ THEN REPLY @5702 GOTO 1  // What are you?
  IF ~~ THEN REPLY @5703 GOTO 2  // I am not so easily frightened of a defeated god.
  IF ~~ THEN REPLY @5704 GOTO 3  // I'll do what my father failed to do, end your existence!
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

IF ~HPLT(Myself,2)~ THEN BEGIN 4
  SAY @5720 = @5721 = @5722
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @5723 GOTO 5  // I will make the same choice as my father. I will take some of your divinity and you will serve me as you did him.
  IF ~~ THEN REPLY @5724 GOTO 6  // I will consume the remainder of your divine essence and end your existence.
  IF ~~ THEN REPLY @5725 GOTO 7  // I choose to end your existence.
  IF ~~ THEN REPLY @5726 GOTO 8  // Flee this place and know you are again a defeated being.
END

IF ~~ THEN BEGIN 5
  SAY @5730
  IF ~~ THEN DO ~SetGlobal("MO_Belchaad_Defeated","GLOBAL",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ChangeEnemyAlly(Myself,NEUTRAL)
GiveItemCreate("mobhabl1",Player1,1,0,0)
AddJournalEntry(@20007,INFO)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut04")~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @5731
  IF ~~ THEN DO ~SetGlobal("MO_Belchaad_Defeated","GLOBAL",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ChangeEnemyAlly(Myself,NEUTRAL)
GiveItemCreate("mobhabl1",Player1,1,0,0)
AddJournalEntry(@20008,INFO)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut05")~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @5731
  IF ~~ THEN DO ~SetGlobal("MO_Belchaad_Defeated","GLOBAL",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ChangeEnemyAlly(Myself,NEUTRAL)
GiveItemCreate("mobhabl1",Player1,1,0,0)
AddJournalEntry(@20009,INFO)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut06")~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @5732
  IF ~~ THEN DO ~SetGlobal("MO_Belchaad_Defeated","GLOBAL",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ChangeEnemyAlly(Myself,NEUTRAL)
GiveItemCreate("mobhabl1",Player1,1,0,0)
AddJournalEntry(@20010,INFO)
ClearAllActions()
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END