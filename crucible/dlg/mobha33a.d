///////////////////////////////////////////////////////////////////
// Dialogue for Throne of Blood Transition (Ascension)
// 
///////////////////////////////////////////////////////////////////
BEGIN MOBHA33

IF ~~ THEN BEGIN 0
  SAY @6100
  IF ~Dead("Balth")~ THEN REPLY @6101 THEN DO ~ClearAllActions()
SaveGame(2)
ActionOverride(Player1,LeaveAreaLUA("MOBHA1","",[2518.1543],12))
ActionOverride(Player2,LeaveAreaLUA("MOBHA1","",[2459.1512],12))
ActionOverride(Player3,LeaveAreaLUA("MOBHA1","",[2590.1620],12))
ActionOverride(Player4,LeaveAreaLUA("MOBHA1","",[2400.1567],12))
ActionOverride(Player5,LeaveAreaLUA("MOBHA1","",[2527.1696],12))
ActionOverride(Player6,LeaveAreaLUA("MOBHA1","",[2464.1622],12))~ EXIT
  IF ~Global("BalthazarFights","GLOBAL",1)~ THEN REPLY @6101 THEN DO ~ClearAllActions()
SaveGame(2)
ActionOverride(Player1,LeaveAreaLUA("MOBHA1","",[2518.1543],12))
ActionOverride(Player2,LeaveAreaLUA("MOBHA1","",[2459.1512],12))
ActionOverride(Player3,LeaveAreaLUA("MOBHA1","",[2590.1620],12))
ActionOverride(Player4,LeaveAreaLUA("MOBHA1","",[2400.1567],12))
ActionOverride(Player5,LeaveAreaLUA("MOBHA1","",[2527.1696],12))
ActionOverride(Player6,LeaveAreaLUA("MOBHA1","",[2464.1622],12))~ EXIT
  IF ~~ THEN REPLY @6102 THEN DO ~DestroySelf()~ EXIT
END

