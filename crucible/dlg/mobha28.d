///////////////////////////////////////////////////////////////////
// Dialogue for Malchediel
// Solar in charge of the Planetar Garrison
///////////////////////////////////////////////////////////////////
BEGIN MOBHA28

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6221
  IF ~Global("MO_UthaedeolAlly","GLOBAL",0)~ THEN REPLY @6222 GOTO 3  // He posed a challenge, but was no match for me.
  IF ~Global("MO_UthaedeolAlly","GLOBAL",1)~ THEN REPLY @6223 GOTO 2  // Fool, he joined me and will assist me in defeating Amelyssan.
  IF ~~ THEN REPLY @6224 GOTO 100  // Enough talk, I'm here for your blood!
END

IF ~~ THEN BEGIN 2
  SAY @6225
  IF ~~ THEN GOTO 3
END 

IF ~~ THEN BEGIN 3
  SAY @6226 = @6227 = @6228
  IF ~~ EXTERN MOBHA51 MOVIEKANG1
END

IF ~~ THEN BEGIN 4
  SAY @6230 = @6231 = @6233
  IF ~~ THEN REPLY @6234 GOTO 5  // Power or not, I do not want the taint of Bhaal within me.
  IF ~~ THEN REPLY @6235 GOTO 5  // I have overcome much, and risen stronger for it. I do not know how much can be attributed to Bhaal and how much is from myself.
  IF ~~ THEN REPLY @6236 GOTO 5  // The amount of Bhaal's essence bestowed upon me is great, and I am first of my kin.
  IF ~~ THEN REPLY @6224 GOTO 100  // Enough talk, I'm here for your blood!
END

IF ~~ THEN BEGIN 5
  SAY @6237
  IF ~~ THEN REPLY @6238 GOTO 6 // Wait. What did Uthaedeol mean when he said you falsely claim to serve a master?
  IF ~~ THEN REPLY @6239 GOTO 100  // I suppose there is no reasoning and we must come to blows.
  IF ~~ THEN REPLY @6240 GOTO 100  // You know nothing of true power.
  IF ~~ THEN REPLY @6241 GOTO 100  // Gladly, I was ready for a fight as soon as I saw you.
END 

IF ~~ THEN BEGIN 6
  SAY @6243 = @6244
  IF ~~ THEN REPLY @6245 GOTO 7 // Jergal told you to serve Bhaal?
  IF ~~ THEN REPLY @6246 GOTO 7 // Did you serve Bhaal or Jergal?
  IF ~~ THEN REPLY @6247 GOTO 7 // Go on.
  IF ~~ THEN REPLY @6224 GOTO 100  // Enough talk, I'm here for your blood!
END 

IF ~~ THEN BEGIN 7
  SAY @6248 = @6249 = @6250
  IF ~~ THEN REPLY @6251 GOTO 9 // I do not know who would command it.
  IF ~~ THEN REPLY @6252 GOTO 8 // How would I find out who commanded the Solar?
  IF ~~ THEN REPLY @6253 GOTO 9 // It doesn't matter who directed the Solar.
  IF ~~ THEN REPLY @6254 GOTO 9 // The Solar was as equally worthless to me as you must have been to Bhaal.
  IF ~~ THEN REPLY @6224 GOTO 100  // Enough talk, I'm here for your blood!
END 

IF ~~ THEN BEGIN 8
  SAY @6255
  IF ~~ THEN GOTO 9
END 

IF ~~ THEN BEGIN 9
  SAY @6256
  IF ~~ THEN GOTO 100
END

IF ~~ THEN BEGIN 100
  SAY @6242
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
//GiveItemCreate("mobhabl2",Player1,1,0,0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut20")~ EXIT
END

//-------------------------------------------------------------------------
// Viekang External
APPEND MOBHA51
  IF ~~ THEN BEGIN MOVIEKANG1
    SAY @6229
    IF ~~ THEN EXTERN MOBHA28 4
  END
END