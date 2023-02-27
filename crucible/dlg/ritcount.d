// Ritual High Priestess
BEGIN RITCOUNT

IF ~NumTimesTalkedTo(0)
GlobalTimerExpired("RitualTimeout","GLOBAL")~ THEN BEGIN toolate
  SAY @311
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
!GlobalTimerExpired("RitualTimeout","GLOBAL")~ THEN BEGIN 1
  SAY @301 = @302 = @303
  IF ~~ THEN REPLY @304 GOTO dontknow
  IF ~~ THEN REPLY @305 GOTO stopyou
  IF ~~ THEN REPLY @306 GOTO stopyou
END

IF ~~ THEN BEGIN dontknow
  SAY @307
  IF ~~ THEN GOTO stopyou
END

IF ~~ THEN BEGIN stopyou
  SAY @308 = @309 = @310
  IF ~~ THEN EXIT
END
