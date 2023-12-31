///////////////////////////////////////////////////////////////////
// Dialogue for Uthaedeol the Blood-drenched
// Summoned in final fight to aid the player
///////////////////////////////////////////////////////////////////
BEGIN MOBHA44a

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6900
  IF ~~ THEN EXTERN MOBHA37 CULDUS1
END

IF ~~ THEN BEGIN 1
  SAY @6902
  IF ~~ THEN DO ~SetGlobal("MOBHA2_Enemy","GLOBAL",1)~ EXIT
END

IF ~!NumTimesTalkedTo(0)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 2
  SAY @6903 = @6904
  IF ~~ THEN REPLY @6905 GOTO 3  // Reconsider, I can promise you great rewards once we see this through.
  IF ~~ THEN REPLY @6906 GOTO 3  // I should have expected as much from a servant of Bhaal.
  IF ~~ THEN REPLY @6907 GOTO 3  // Good, I've been looking forward to gutting you!
END

IF ~~ THEN BEGIN 3
  SAY @6617
  IF ~~ THEN DO ~Enemy()~ EXIT
END

//-------------------------------------------------------------------------
// Culdus External
APPEND MOBHA37
  IF ~~ THEN BEGIN CULDUS1
    SAY @6901
    IF ~~ THEN EXTERN MOBHA44a 1
  END
END