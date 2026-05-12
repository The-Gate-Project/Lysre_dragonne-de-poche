EXTEND_BOTTOM FATESP 6 #4
+ ~!Dead("CKLysre") !InMyArea("CKLysre") Global("CKLysreSummoned","GLOBAL",0)~ + @8
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("CKLysre25",[1999.1228],0) 
SetGlobal("CKLysreSummoned","GLOBAL",1)~ GOTO 8
END
