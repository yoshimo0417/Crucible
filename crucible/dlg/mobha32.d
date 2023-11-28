///////////////////////////////////////////////////////////////////
// Dialogue for Bhaal Skull Pedestal
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA32

IF ~Global("Bloodskull_center","MOBHA1",0)~ THEN BEGIN 0
  SAY @6000
  IF ~DifficultyGT(HARD)~ THEN REPLY @6001 GOTO 1
  IF ~Difficulty(HARD)~ THEN REPLY @6001 GOTO 2
  IF ~Difficulty(NORMAL)~ THEN REPLY @6001 GOTO 3
  IF ~DifficultyLT(NORMAL)~ THEN REPLY @6001 GOTO 4
  IF ~~ THEN REPLY @6002 GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @6003
  IF ~~ THEN DO ~ApplyDamagePercent(Player1,75,Stunning)
SetGlobal("Bloodskull_center","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6003
  IF ~~ THEN DO ~ApplyDamagePercent(Player1,50,Stunning)
SetGlobal("Bloodskull_center","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6003
  IF ~~ THEN DO ~ApplyDamagePercent(Player1,25,Stunning)
SetGlobal("Bloodskull_center","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6003
  IF ~~ THEN DO ~ApplyDamagePercent(Player1,10,Stunning)
SetGlobal("Bloodskull_center","MOBHA1",1)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @6004
  IF ~~ THEN DO ~~ EXIT
END
