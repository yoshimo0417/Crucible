///////////////////////////////////////////////////////////////////
// Dialogue for Uthaedeol the Blood-drenched
// Summoned in Planar Garrison (1st Floor)
///////////////////////////////////////////////////////////////////
BEGIN MOBHA44

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6600
  IF ~~ THEN EXTERN MOBHA28A MOMALCHEDIEL1
END

IF ~~ THEN BEGIN 1
  SAY @6602 = @6603
  IF ~~ THEN EXTERN MOBHA28A MOMALCHEDIEL2
END

IF ~Global("MO_UthaedeolChat","MOBHA8",1)~ THEN BEGIN 2
  SAY @6606
  IF ~~ THEN REPLY @6607 GOTO 4  // Excuse me?
  IF ~~ THEN REPLY @6608 GOTO 4  // How does what feel?
  IF ~~ THEN REPLY @6609 GOTO 3  // You'll be feeling my blade!
END

IF ~~ THEN BEGIN 3
  SAY @6617
  IF ~~ THEN DO ~SetGlobal("MO_UthaedeolChat","MOBHA8",2)
UndoExplore() 
ENEMY()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @6610 = @6611
  IF ~~ THEN REPLY @6612 GOTO 5  // It is awful, and I wish I could be rid of this evil.
  IF ~~ THEN REPLY @6613 GOTO 5  // I keep it at bay and have found a way to suppress the dark urges.
  IF ~~ THEN REPLY @6614 GOTO 5  // I have learned to co-exist with it and keep it in check.
  IF ~~ THEN REPLY @6615 GOTO 6  // I relish the power it brings me!
  IF ~~ THEN REPLY @6616 GOTO 3  // Stop yapping, peon. I've a Solar to kill.
END

IF ~~ THEN BEGIN 5
  SAY @6618
  IF ~~ THEN GOTO 7
END 

IF ~~ THEN BEGIN 6
  SAY @6619
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @6620
  IF ~~ THEN REPLY @6621 GOTO 8  // What do you mean by slept long?
  IF ~~ THEN REPLY @6622 GOTO 10  // Amelyssan is going to use Bhaal's divine essence so she can ascend as a god.
  IF ~~ THEN REPLY @6623 GOTO 9  // I'm going to become the new Lord of Murder.
  IF ~~ THEN REPLY @6624 GOTO 3  // I don't have time to give you a history lesson. Prepare to die!
END

IF ~~ THEN BEGIN 8
  SAY @6625 = @6626 = @6627 = @6628
  IF ~~ THEN REPLY @6622 GOTO 10  // Amelyssan is going to use Bhaal's divine essence so she can ascend as a god.
  IF ~~ THEN REPLY @6623 GOTO 9  // I'm going to become the new Lord of Murder.
  IF ~~ THEN REPLY @6624 GOTO 3  // I don't have time to give you a history lesson. Prepare to die!
END

IF ~~ THEN BEGIN 9
  SAY @6632
  IF ~~ THEN REPLY @6622 GOTO 10  // Amelyssan is going to use Bhaal's divine essence so she can ascend as a god.
  IF ~~ THEN REPLY @6624 GOTO 3  // I don't have time to give you a history lesson. Prepare to die!
END

IF ~~ THEN BEGIN 10
  SAY @6629 = @6630 = @6631
  IF ~~ THEN REPLY @6634 GOTO 11  // She was Bhaal's high priestess entrusted by Bhaal with the ritual for his resurrection. She intends to use the same ritual for herself.
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @6633 GOTO 12  // How about you join with me and we can defeat her toghether? (EVIL)
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @6633 GOTO 14  // How about you join with me and we can defeat her toghether? (NON-EVIL)
  IF ~~ THEN REPLY @6635 GOTO 3  // I plan to stop her, but I first must end you!
END

IF ~~ THEN BEGIN 11
  SAY @6636
  IF ~Alignment(Player1,MASK_EVIL)~ THEN REPLY @6633 GOTO 12  // How about you join with me and we can defeat her toghether? (EVIL)
  IF ~!Alignment(Player1,MASK_EVIL)~ THEN REPLY @6633 GOTO 14  // How about you join with me and we can defeat her toghether? (NON-EVIL)
  IF ~~ THEN REPLY @6637 GOTO 3
END

IF ~~ THEN BEGIN 12
  SAY @6638
  IF ~CheckStatGT(Myself,18,CHR)~ THEN REPLY @6639 GOTO 13  // Yes, I will rise in his place! (Success)
  IF ~CheckStatLT(Myself,19,CHR)~ THEN REPLY @6639 GOTO 14  // Yes, I will rise in his place! (Fail)
  IF ~~ THEN REPLY @6640 GOTO 14  //No, I plan to walk my own path of destruction on the mortal plane.
  IF ~~ THEN REPLY @6641 GOTO 3  // I don't have time for this. Prepare to die!
END 

IF ~~ THEN BEGIN 13
  SAY @6642 
  IF ~~ THEN DO ~SetGlobal("MO_UthaedeolChat","MOBHA8",3)
UndoExplore() 
ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @6643
  IF ~~ THEN GOTO 3
END

//-------------------------------------------------------------------------
// Malchediel External
APPEND MOBHA28A
  IF ~~ THEN BEGIN MOMALCHEDIEL1
    SAY @6601
    IF ~~ THEN EXTERN MOBHA44 1
  END

  IF ~~ THEN BEGIN MOMALCHEDIEL2
    SAY @6604 = @6605
    IF ~~ THEN DO ~ClearAllActions()
SetGlobal("MO_UthaedeolChat","MOBHA8",1)
SmallWait(5)
StartCutSceneMode()
StartCutScene("mocut08")~ EXIT
  END
END