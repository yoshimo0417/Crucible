///////////////////////////////////////////////////////////////////
// Dialogue for Viekang
// Top of Planar Tower
///////////////////////////////////////////////////////////////////
BEGIN MOBHA51

IF ~NumTimesTalkedTo(0)
Alignment(Player1,MASK_EVIL)
Global("MO_Malchediel_Defeated","GLOBAL",1)~ THEN BEGIN 0
  SAY @7000
  IF ~~ THEN GOTO 3
END

IF ~NumTimesTalkedTo(0)
!Alignment(Player1,MASK_EVIL)
Global("MO_Malchediel_Defeated","GLOBAL",1)~ THEN BEGIN 1
  SAY @7001
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @7002 = @7003
  IF ~~ THEN GOTO 4
END

IF ~Global("MO_ViekangEscape","MOBHA9",0)
!Allegiance("mobha51",ENEMY)~ BEGIN 4
  SAY @7004
  IF ~~ THEN REPLY @7005 GOTO 9  // I will set you free at once, flee this place.
  IF ~~ THEN REPLY @7006 GOTO 8  // Swear an oath to me to never attempt to rise up and take the mantle of our father. In this place an oath will have power, like a geas. I will then give you your freedom.
  IF ~~ THEN REPLY @7007 GOTO 6  // Little or not, I cannot have any loose ends running around. It's nothing personal, but you have to die.
  IF ~~ THEN REPLY @7008 GOTO 6  // Die like the trapped animal that you are.
  IF ~~ THEN REPLY @7009 GOTO 5  // I need a moment to think on this.
END 

// Undecided
IF ~~ THEN BEGIN 5
  SAY @7010
  IF ~~ THEN DO ~~ EXIT
END

// Dialog attack Viekang
IF ~~ THEN BEGIN 6
  SAY @7011
  IF ~~ THEN DO ~Enemy()~ EXIT
END

// If attacked out of dialog
IF ~Allegiance("mobha51",ENEMY)~ THEN BEGIN 7
  SAY @7011
  IF ~~ THEN DO ~~ EXIT
END

// Swear Oath
IF ~~ THEN BEGIN 8
  SAY @7012
  IF ~~ THEN REPLY @7005 GOTO 9  // I will set you free at once, flee this place.
  IF ~~ THEN REPLY @7014 GOTO 6  // I can't risk it. Die, fool!
END 

// Escape
IF ~~ THEN BEGIN 9
  SAY @7013
  IF ~~ THEN DO ~DestroyItem("chains")
ReallyForceSpell(Myself,VIEKANG_LIGHTNING)~ EXIT
END

// DestroyItem("chains")
// ReallyForceSpell(Myself,VIEKANG_LIGHTNING)