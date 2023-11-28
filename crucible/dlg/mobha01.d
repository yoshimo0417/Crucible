///////////////////////////////////////////////////////////////////
// Dialogue for Deathbringer
// Greets Player in Bhaal's Kingdom
///////////////////////////////////////////////////////////////////
BEGIN MOBHA01

IF ~Global("MO_DeathbringerShout","LOCALS",0)
AreaCheck("mobha3")~ THEN BEGIN 0
  SAY @6300
  IF ~~ THEN DO ~SetGlobal("MO_DeathbringerShout","LOCALS",1)
SetGlobal("MOBHA3_Enemy","GLOBAL",1)
TriggerActivation("TrMOBHA1",FALSE)
TriggerActivation("TrMOBHA2",FALSE)
TriggerActivation("TrMOBHA4",FALSE)
Enemy()~ EXIT
END

