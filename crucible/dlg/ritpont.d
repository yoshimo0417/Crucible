// Pontifex, the guy who gives you the ritual quest

BEGIN RITPONT

IF ~AreaCheck("AR0086")~ THEN BEGIN arrived
  SAY @413
  IF ~~ THEN DO ~GiveItemCreate("Potn11",Player1,5,5,5)
GiveItemCreate("Potn42",Player1,5,5,5)
GiveItemCreate("Restore",Player1,5,5,5)
GiveItemCreate("scrl7o",Player1,5,5,5)
GiveItemCreate("scrl7q",Player1,5,5,5)
GiveItemCreate("scrl94",Player1,5,5,5)
GiveItemCreate("scrl8w",Player1,5,5,5)
GiveItemCreate("wand10",Player1,8,8,8)
GiveItemCreate("mysboot",Player1,1,1,1)
GivePartyAllEquipment()
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~Global("Fight","LOCALS",1)~ THEN BEGIN fight
  SAY @422 = @423 = @424
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~Global("RitPrep","GLOBAL",1)~ THEN BEGIN rit
  SAY @414
  /* decision tree ahoy! */
  IF ~~ THEN GOTO perfect
  IF ~Dead("ritcount")~ THEN GOTO dead_disrupt
  IF ~Global("RitualDisrupted","GLOBAL",0)~ THEN GOTO dead_nodisrupt
  IF ~Global("RitualGuardPassed","GLOBAL",0)~ THEN GOTO never_got_in
END

IF ~~ THEN BEGIN never_got_in
  SAY @415 = @416 
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN dead_nodisrupt
  SAY @417 = @418
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
SetGlobal("Fight","LOCALS",1)
AddXPObject(Player1,30000) 
AddXPObject(Player2,30000) 
AddXPObject(Player3,30000) 
AddXPObject(Player4,30000) 
AddXPObject(Player5,30000) 
AddXPObject(Player6,30000)~ EXIT
END

IF ~~ THEN BEGIN dead_disrupt
  SAY @419 = @418
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
SetGlobal("Fight","LOCALS",1)
AddXPObject(Player1,30000) 
AddXPObject(Player2,30000) 
AddXPObject(Player3,30000) 
AddXPObject(Player4,30000) 
AddXPObject(Player5,30000) 
AddXPObject(Player6,30000)~ EXIT
END

IF ~~ THEN BEGIN perfect
  SAY @420 = @421
  IF ~~ THEN DO ~GiveItemCreate("ritamul",Player1,1,0,0)
GiveItemCreate("ritamul",Player2,1,0,0)
GiveItemCreate("ritamul",Player3,1,0,0)
GiveItemCreate("ritamul",Player4,1,0,0)
GiveItemCreate("ritamul",Player5,1,0,0)
GiveItemCreate("ritamul",Player6,1,0,0)
GiveItemCreate("ritdrag",Player1,1,0,0)
AddXPObject(Player1,90000) 
AddXPObject(Player2,90000) 
AddXPObject(Player3,90000) 
AddXPObject(Player4,90000) 
AddXPObject(Player5,90000) 
AddXPObject(Player6,90000)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
  SAY @326
  IF ~~ THEN REPLY @327 GOTO req
  IF ~~ THEN REPLY @328 GOTO sim
  // IF ~~ THEN REPLY @329 EXIT
END

IF ~~ THEN BEGIN sim
  SAY @330 IF ~~ THEN GOTO req
END

IF ~~ THEN BEGIN req
  SAY @331
  IF ~~ THEN REPLY @332 GOTO whytrust
  IF ~~ THEN REPLY @333 GOTO explain
END

IF ~~ THEN BEGIN whytrust
  SAY @334 = @335 = @336 = @337
  IF ~~ THEN REPLY @338 GOTO insane
  IF ~~ THEN REPLY @339 GOTO explain
END

IF ~~ THEN BEGIN insane
  SAY @340
  IF ~~ THEN GOTO explain
END

IF ~~ THEN BEGIN explain
  SAY @341 = @342 
  IF ~~ THEN REPLY @343 GOTO e1
  IF ~~ THEN REPLY @344 GOTO e2
END

IF ~~ THEN BEGIN e1 SAY @345 IF ~~ THEN GOTO e3 END
IF ~~ THEN BEGIN e2 SAY @346 IF ~~ THEN GOTO e3 END

IF ~~ THEN BEGIN e3
  SAY @347 = @348
  IF ~~ THEN GOTO main_quest
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN main_quest
  SAY @349
  IF ~~ THEN REPLY @350 GOTO say_defenses
  IF ~~ THEN REPLY @358 GOTO say_people
  IF ~~ THEN REPLY @368 GOTO say_advice
  IF ~~ THEN REPLY @375 GOTO say_ritual
  IF ~~ THEN REPLY @383 GOTO say_betray
  IF ~~ THEN REPLY @386 GOTO say_reward
  IF ~~ THEN REPLY @390 GOTO say_whoare
  IF ~~ THEN REPLY @395 GOTO say_moretime
  IF ~~ THEN REPLY @397 GOTO g1
END

CHAIN2 RITPONT say_defenses
  @351 = @352 = @353 = @354 = @355 = @356 = @357
END RITPONT main_quest

CHAIN2 RITPONT say_people
  @359 = @360 = @361 = @362 = @363 = @364 = @365 = @366 = @367
END RITPONT main_quest

CHAIN2 RITPONT say_advice
  @369 = @370 = @371 = @372 = @373 = @374
END RITPONT main_quest

// explain the Ritual .. not!
IF ~~ THEN BEGIN say_ritual
  SAY @376 IF ~~ THEN REPLY @377 GOTO say_r2
END
IF ~~ THEN BEGIN say_r2
  SAY @378 IF ~~ THEN REPLY @379 GOTO say_r3
END
IF ~~ THEN BEGIN say_r3
  SAY @380 IF ~~ THEN REPLY @381 GOTO say_r4
END
IF ~~ THEN BEGIN say_r4
  SAY @382
  IF ~~ THEN GOTO main_quest
END

// cute little trick: we'll use a CHAIN to ourselves!
CHAIN2 RITPONT say_betray
  @384 = @385
END RITPONT main_quest

CHAIN2 RITPONT say_reward
  @387 = @388 = @389
END RITPONT main_quest

CHAIN2 RITPONT say_whoare
  @391 = @392 = @393 = @393 = @394
END RITPONT main_quest

IF ~~ THEN BEGIN say_moretime
  SAY @396 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN g1
  SAY @398
  IF ~~ THEN REPLY @399 GOTO trustme
  IF ~~ THEN REPLY @401 GOTO moretime2
END

IF ~~ THEN BEGIN trustme
  SAY @400 = @403
  IF ~~ THEN REPLY @404 GOTO accept
  IF ~~ THEN REPLY @401 GOTO moretime2
END

IF ~~ THEN BEGIN accept
  SAY @405 
  // ONE_DAY = 7200, so one hour = 300 time units
  IF ~~ THEN REPLY @406 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",4500)~
        GOTO want_more_time
  IF ~~ THEN REPLY @409 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",2100)~ 
        GOTO accept_fine
  IF ~~ THEN REPLY @410 DO ~SetGlobalTimer("RitualIsNowOver","GLOBAL",2100)~ 
        GOTO accept_heckle
END

IF ~~ THEN BEGIN want_more_time
  SAY @407
  IF ~~ THEN REPLY @408 GOTO accept_fine
END

IF ~~ THEN BEGIN accept_heckle
  SAY @411
  IF ~~ THEN GOTO accept_fine
END

IF ~~ THEN BEGIN accept_fine
  SAY @412
  IF ~~ THEN DO ~SetGlobal("RitualAccept","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN moretime2
  SAY @402 IF ~~ THEN GOTO main_quest
END

