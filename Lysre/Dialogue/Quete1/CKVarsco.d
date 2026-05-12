//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue de la Paladine de Tiamat (Quete NPC)//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKVarsco

IF ~Global("CKquete1","GLOBAL",7)~ THEN BEGIN CKV1.1
  SAY ~*L'armure de cette femme est tachee de croute de sang. Elle semble chercher a boire paisiblement une biere.* Que me voulez vous?~
  IF ~~ THEN REPLY ~J'ai une quete a resoudre, tu veux bien?~ DO ~SetGlobal("CKquete1","GLOBAL",8)~ EXIT
END

IF ~Global("CKquete1","GLOBAL",8)~ THEN BEGIN CKV2
  SAY ~*La demi-elfe vous toise, puis hoche la tete en guise de salut*~
  IF ~~ THEN EXIT
END