///////////////////////////////////////////////////////////////////
// Dialogue for Malchediel
// Solar in charge of the Planetar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA28

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6200
  IF ~~ THEN DO ~SetGlobal("MOBHA9_Enemy","GLOBAL",1)
Enemy()~ EXIT
END

IF ~HPLT(Myself,2)~ THEN BEGIN 1
  SAY @6220
  IF ~~ THEN DO ~SetGlobal("MO_Malchediel_Defeated","GLOBAL",1)
AddXPObject(Player1,20000)
AddXPObject(Player2,20000)
AddXPObject(Player3,20000)
AddXPObject(Player4,20000)
AddXPObject(Player5,20000)
AddXPObject(Player6,20000)
ChangeEnemyAlly(Myself,NEUTRAL)
GiveItemCreate("mobhabl2",Player1,1,0,0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut20")~ EXIT
END