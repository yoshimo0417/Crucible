///////////////////////////////////////////////////////////////////
// Dialogue for Kirinhale
// Greets Player in the Outcast Refuge
///////////////////////////////////////////////////////////////////
BEGIN MOBHA22

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @7200 = @7201
  IF ~~ THEN REPLY @7202 GOTO 1  // I set you free in Durlag's Tower.
  IF ~~ THEN REPLY @7203 GOTO 2  // We met in Durlag's Tower, and I left you to rot.
  IF ~~ THEN REPLY @7204 GOTO 3  // I killed you in Durlag's Tower.
  IF ~~ THEN REPLY @7205 GOTO 4  // No, I don't think we have.
END

IF ~~ THEN BEGIN 1
  SAY @7206 = @7207
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 2
  SAY @7208
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 3
  SAY @7209
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 4
  SAY @7210
  IF ~~ THEN GOTO 5
END 

IF ~~ THEN BEGIN 5
  SAY @7211 = @7212 = @7213
  IF ~Gender(Player1,MALE)~ THEN GOTO 6
  IF ~Gender(Player1,FEMALE)~ THEN GOTO 7
END 

IF ~~ THEN BEGIN 6
  SAY @7214
  IF ~~ THEN GOTO 8
END 

IF ~~ THEN BEGIN 7
  SAY @7215
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @7216
  IF ~~ THEN REPLY @7217 GOTO 11  // I see I don't have a choice in the matter. I'll aid you.
  IF ~~ THEN REPLY @7218 GOTO 11  // As the souls are of a foul nature, I will help you.
  IF ~~ THEN REPLY @7219 GOTO 9  // What do you plan on using the souls for?
  IF ~~ THEN REPLY @7220 GOTO 10  // Evil souls or not, I cannot allow you to do this.
  IF ~~ THEN REPLY @7221 GOTO 10  // I plan on becoming the new Lord of Murder and won't allow you to pre-emptively steal from me.
END

IF ~~ THEN BEGIN 9
  SAY @7222
  IF ~~ THEN REPLY @7217 GOTO 11  // I see I don't have a choice in the matter. I'll aid you.
  IF ~~ THEN REPLY @7218 GOTO 11  // As the souls are of a foul nature, I will help you.
  IF ~~ THEN REPLY @7220 GOTO 10  // Evil souls or not, I cannot allow you to do this.
  IF ~~ THEN REPLY @7221 GOTO 10  // I plan on becoming the new Lord of Murder and won't allow you to pre-emptively steal from me.
END

IF ~~ THEN BEGIN 10
  SAY @7223
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @7224
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut23")~ EXIT
END

IF ~Global("MO_KirinQuest","GLOBAL",2)~ THEN BEGIN 12
  SAY @7225
  IF ~~ THEN DO ~ForceSpell(Myself,FLASHY_2)
SetGlobal("MO_KirinQuest","GLOBAL",3)
SetGlobalTimer("MO_KirinQuest","GLOBAL",20)
CreateVisualEffectObject("SPPLANAR","mobha22")
Deactivate(Myself)~ EXIT
END

IF ~Global("MO_KirinQuest","GLOBAL",5)~ THEN BEGIN 13
  SAY @7226
  IF ~Gender(Player1,MALE)~ THEN DO ~GiveItemCreate("mobha53a",Player1,1,0,0)~ GOTO 14
  IF ~Gender(Player1,FEMALE)~ THEN DO ~GiveItemCreate("mobha53a",Player1,1,0,0)~ GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @7227
  IF ~~ THEN DO ~AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @7228
  IF ~~ THEN DO ~AddXPObject(Player1,10000)
AddXPObject(Player2,10000)
AddXPObject(Player3,10000)
AddXPObject(Player4,10000)
AddXPObject(Player5,10000)
AddXPObject(Player6,10000)
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END