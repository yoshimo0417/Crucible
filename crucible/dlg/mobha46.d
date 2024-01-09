///////////////////////////////////////////////////////////////////
// Dialogue for Gaohan Ralahr
// Greets Player 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA46

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6700
  IF ~~ THEN REPLY @6702 GOTO 1  // Excuse me?
  IF ~~ THEN REPLY @6703 GOTO 1  // What assistance do you need?
  IF ~~ THEN REPLY @6704 GOTO 1  // I am not here to assist you.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

IF ~~ THEN BEGIN 1
  SAY @6706 = @6707 = @6708
  IF ~~ THEN REPLY @6709 GOTO 9  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

IF ~~ THEN BEGIN 2
  SAY @6714
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6715
  IF ~Global("MO_LichFight1","MOBHA0",0)~ THEN GOTO 4  // Fought 0 fights
  IF ~Global("MO_LichFight2","MOBHA0",0)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 12  // Fought 1 fight
  IF ~Global("MO_LichFight3","MOBHA0",0)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 16  // Fought 2 fights
  IF ~Global("MO_LichFight4","MOBHA0",0)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 20  // Fought 3 fights
  IF ~Global("MO_LichFight4","MOBHA0",1)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 99  // Fought 4 fights
END

// No Fights Completed
IF ~Global("MO_LichFight1","MOBHA0",0)
HPPercent(Myself,100)~ THEN BEGIN 4
  SAY @6708
  IF ~~ THEN REPLY @6709 GOTO 9  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

IF ~~ THEN BEGIN 6
  SAY @6716 = @6717
  IF ~~ THEN REPLY @6718 GOTO 7  // Haven't you heard? Amelyssan is seeking to ascend as the new Lord of Murder.
  IF ~~ THEN REPLY @6709 GOTO 9  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END 

IF ~~ THEN BEGIN 7
  SAY @6719
  IF ~Global("MO_LichFight1","MOBHA0",0)~ THEN GOTO 4  // Fought 0 fights
  IF ~Global("MO_LichFight2","MOBHA0",0)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 12  // Fought 1 fight
  IF ~Global("MO_LichFight3","MOBHA0",0)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 16  // Fought 2 fights
  IF ~Global("MO_LichFight4","MOBHA0",0)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 20  // Fought 3 fights
  IF ~Global("MO_LichFight4","MOBHA0",1)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 99  // Fought 4 fights
END

IF ~~ THEN BEGIN 8
  SAY @6720 = @6721
  IF ~Global("MO_LichFight1","MOBHA0",0)~ THEN GOTO 4  // Fought 0 fights
  IF ~Global("MO_LichFight2","MOBHA0",0)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 12  // Fought 1 fight
  IF ~Global("MO_LichFight3","MOBHA0",0)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 16  // Fought 2 fights
  IF ~Global("MO_LichFight4","MOBHA0",0)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 20  // Fought 3 fights
  IF ~Global("MO_LichFight4","MOBHA0",1)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight1","MOBHA0",1)~ THEN GOTO 99  // Fought 4 fights
END

// First Fight
IF ~~ THEN BEGIN 9
  SAY @6722
  IF ~DifficultyLT(HARDEST)~ THEN GOTO 10
  IF ~DifficultyGT(HARD)~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10
  SAY @6723
  IF ~~ THEN DO ~SetGlobal("MO_LichFight1","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut09a")~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @6723
  IF ~~ THEN DO ~SetGlobal("MO_LichFight1","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut09b")~ EXIT
END

// 1 Fight Completed
IF ~Global("MO_LichFight1","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",0)
HPPercent(Myself,100)~ THEN BEGIN 12
  SAY @6724
  IF ~~ THEN REPLY @6709 GOTO 13  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

// Second Fight
IF ~~ THEN BEGIN 13
  SAY @6725
  IF ~DifficultyLT(HARDEST)~ THEN GOTO 14
  IF ~DifficultyGT(HARD)~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14
  SAY @6726
  IF ~~ THEN DO ~SetGlobal("MO_LichFight2","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut11a")~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @6726
  IF ~~ THEN DO ~SetGlobal("MO_LichFight2","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut11b")~ EXIT
END

// 2 Fights Completed
IF ~Global("MO_LichFight1","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight3","MOBHA0",0)
HPPercent(Myself,100)~ THEN BEGIN 16
  SAY @6727 = @6728
  IF ~~ THEN REPLY @6709 GOTO 17  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

// Third Fight
IF ~~ THEN BEGIN 17
  SAY @6729
  IF ~DifficultyLT(HARDEST)~ THEN GOTO 18
  IF ~DifficultyGT(HARD)~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18
  SAY @6730
  IF ~~ THEN DO ~SetGlobal("MO_LichFight3","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut13a")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @6730
  IF ~~ THEN DO ~SetGlobal("MO_LichFight3","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut13b")~ EXIT
END

// 3 Fights Completed
IF ~Global("MO_LichFight1","MOBHA0",1)
Global("MO_LichFight2","MOBHA0",1)
Global("MO_LichFight3","MOBHA0",1)
Global("MO_LichFight4","MOBHA0",0)
HPPercent(Myself,100)~ THEN BEGIN 20
  SAY @6731 = @6732
  IF ~~ THEN REPLY @6709 GOTO 21  // Sure, I'll be happy to fight some monsters.
  IF ~~ THEN REPLY @6710 GOTO 3  // What types of monsters have you created?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6712 GOTO 8  // Who are you?
  IF ~~ THEN REPLY @6713 GOTO 2  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6705 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // I'll only assist you by ending your existence!
END

// Fourth Fight
IF ~~ THEN BEGIN 21
  SAY @6733
  IF ~~ THEN DO ~SetGlobal("MO_LichFight4","MOBHA0",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("mocut16")~ EXIT
END

IF ~Global("MO_LichFight4","MOBHA0",1)
Global("MO_LichFightFinal","MOBHA0",0)
HPPercent(Myself,100)~ BEGIN 22
  SAY @6734 = @6735
  IF ~~ THEN DO ~SetGlobal("MO_LichFightFinal","MOBHA0",1)
GiveItemCreate("mobha46a",Player1,1,0,0)~ GOTO 99
END

// END/Final Dialog Dialog
IF ~Global("MO_LichFight4","MOBHA0",1)
Global("MO_LichFightFinal","MOBHA0",1)
HPPercent(Myself,100)~ THEN BEGIN 99
  SAY @6736
  IF ~~ THEN REPLY @6712 GOTO 23  // Who are you?
  IF ~~ THEN REPLY @6711 GOTO 6  // Why are you making all of these monsters?
  IF ~~ THEN REPLY @6713 GOTO 28  // Sorry, but I have more pressing matters that require my attention.
  IF ~~ THEN REPLY @6737 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // This was a waste of my time, and I will kill you for this!
END

IF ~~ BEGIN 23
  SAY @6738 = @6739 = @6740 = @6741
  IF ~~ THEN REPLY @6742 GOTO 24  // What happened next?
  IF ~~ THEN REPLY @6743 GOTO 24  // Please continue.
  IF ~OR(3)
CheckStatGT(Player1,50,LORE)
CheckStatGT(Player1,16,INT)
CheckStatGT(Player1,16,WIS)~ THEN REPLY @6744 GOTO 25  // Didn't this cause Mystryl to sacrifice herself and cease all magic which resulted in your cities falling from the sky?
  IF ~~ THEN REPLY @6745 GOTO 28  // Enough with the history lessons, I have more important things to do.
END

IF ~~ BEGIN 24
  SAY @6747
  IF ~~ THEN GOTO 26
END 

IF ~~ BEGIN 25
  SAY @6746
  IF ~~ THEN GOTO 26
END 

IF ~~ BEGIN 26
  SAY @6748 = @6749
  IF ~~ THEN REPLY @6751 GOTO 27 // What brought you back here and into the service of Bhaal?
  IF ~~ THEN REPLY @6750 GOTO 99 // An interesting story.
  IF ~~ THEN REPLY @6745 GOTO 28  // Enough with the history lessons, I have more important things to do.
END

IF ~~ BEGIN 27
  SAY @6752 = @6753 = @6754
  IF ~~ THEN REPLY @6750 GOTO 99 // An interesting story.
  IF ~~ THEN REPLY @6745 GOTO 28  // Enough with the history lessons, I have more important things to do.
  IF ~~ THEN REPLY @6737 DO ~SetGlobal("MO_LichExit","MOBHA0",1)~ GOTO 100  // This was a waste of my time, and I will kill you for this!
END

IF ~~ BEGIN 28
  SAY @6755
  IF ~~ THEN DO ~~ EXIT
END

// Lich attacked or threatened
IF ~OR(2)
Global("MO_LichExit","MOBHA0",1)
HPPercentLT(Myself,100)~ THEN BEGIN 100
  SAY @6701
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
