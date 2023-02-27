///////////////////////////////////////////////////////////////////
// Dialogue for Kuroisan, Acidid Kensai
// He wants Celestial Fury or Malakar. 
///////////////////////////////////////////////////////////////////
BEGIN SOLAK1

IF ~Global("KuroiAlready","GLOBAL",1)~ THEN BEGIN again
  SAY @120
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @101
  IF ~~ THEN REPLY @102 GOTO 2 
  IF ~~ THEN REPLY @103 GOTO 2
  IF ~~ THEN REPLY @104 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @106 
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @105 = @107
  IF ~!PartyHasItem("sw1h51")
!PartyHasItem("sw1h45")~ /* Malakar */
    THEN GOTO neither
  IF ~PartyHasItem("c2sw1h02")~ /* Celestial Fury +5 */
    THEN GOTO fury5
  IF ~PartyHasItem("sw1h51")~ /* Celestial Fury */
    THEN GOTO fury
  IF ~!PartyHasItem("sw1h51")
PartyHasItem("sw1h45")~ /* Malakar */
    THEN GOTO malakar
END

IF ~~ THEN BEGIN neither
  SAY @121
  IF ~~ THEN DO ~SetGlobal("KuroiSpawn","GLOBAL",0) 
  ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN fury5
  SAY @108
  IF ~~ THEN REPLY @109 DO ~TakePartyItem("c2sw1h02")~ GOTO byebye
  IF ~~ THEN REPLY @110 GOTO fight
  IF ~~ THEN REPLY @114 GOTO whyrob
END

IF ~~ THEN BEGIN fury
  SAY @108
  IF ~~ THEN REPLY @109 DO ~TakePartyItem("sw1h51")~ GOTO byebye
  IF ~~ THEN REPLY @110 GOTO fight
  IF ~~ THEN REPLY @114 GOTO whyrob
END

IF ~~ THEN BEGIN malakar
  SAY @111
  IF ~~ THEN REPLY @109 DO ~TakePartyItem("sw1h45")~ GOTO byebye
  IF ~~ THEN REPLY @110 GOTO fight
  IF ~~ THEN REPLY @114 GOTO whyrob
END

IF ~~ THEN BEGIN fight
  SAY @112
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN byebye
  SAY @113
  IF ~~ THEN DO ~ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN whyrob
  SAY @115 = @116 = @117 = @118
  IF ~~ THEN REPLY @110 GOTO fight
  IF ~PartyHasItem("c2sw1h02")~ /* CF+5 */
    THEN REPLY @109 DO ~TakePartyItem("c2sw1h02")~ GOTO byebye
  IF ~PartyHasItem("sw1h51")~ /* Celestial Fury */
    THEN REPLY @109 DO ~TakePartyItem("sw1h51")~ GOTO byebye
  IF ~!PartyHasItem("sw1h51")
PartyHasItem("sw1h45")~ /* Malakar */
    THEN REPLY @109 DO ~TakePartyItem("sw1h45")~ GOTO byebye
END
