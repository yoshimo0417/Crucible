EXTEND_BOTTOM BOTSMITH 4
IF ~PartyHasItem("mobha57d")~ THEN GOTO MO#PartyHasAllParts END
  
APPEND BOTSMITH
IF ~~ THEN BEGIN MO#PartyHasAllParts SAY @6805
	IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO MO#MovingRightAlong
	IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("MOBHA#TOBItemUp","GLOBAL",1)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("mobha57d",1)
													 DestroyItem("mobha57d")~ GOTO 11
	IF ~~ THEN REPLY #66770 GOTO MO#MovingRightAlong
	END 

	IF ~~ THEN BEGIN MO#MovingRightAlong SAY @6806
		COPY_TRANS BOTSMITH 4
	END
END